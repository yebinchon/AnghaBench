
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcfb_par {int dummy; } ;


 int arcfb_lcd_update_vert (struct arcfb_par*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int ceil64 (unsigned int) ;
 unsigned int floor8 (unsigned int) ;
 unsigned int min (unsigned int,int ) ;

__attribute__((used)) static void arcfb_lcd_update_horiz(struct arcfb_par *par, unsigned int left,
   unsigned int right, unsigned int top, unsigned int h)
{
 unsigned int distance, upper, lower;

 distance = h;
 upper = floor8(top);
 lower = min(upper + distance - 1, ceil64(upper));

 while (distance > 0) {
  distance -= ((lower - upper) + 1 );
  arcfb_lcd_update_vert(par, upper, lower, left, right);
  upper = lower + 1;
  lower = min(upper + distance - 1, ceil64(upper));
 }
}
