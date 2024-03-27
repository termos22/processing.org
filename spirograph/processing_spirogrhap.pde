float x = 400;
float y = 400;
float angle = 90;
float dia = 15;

void setup() {
     size(900, 900);
     surface.setLocation(987,70);
}

void draw() {
     background(0);
    
     translate(width/2, height/2);
     rotate(radians(angle/3));
     for(float a = 0; a<360; a+=10) {
         pushMatrix();
         if (angle<360) rotate(radians(a)*sin(radians(angle)));
         rotate(radians(a));
         stroke(#027FF7);
         strokeWeight(2);
         line(x*sin(radians(angle)), 0, 0, y-dia/2);

         noStroke();
         fill(#03FF1D);
         ellipse(x*sin(radians(angle)), 0, dia/2, dia/2);
         stroke(#F6FF03);
         noFill();
         ellipse(0, y, dia, dia);
         popMatrix();
    }
    angle++;
}
