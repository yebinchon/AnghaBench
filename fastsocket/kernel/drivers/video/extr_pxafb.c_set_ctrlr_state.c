
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct pxafb_info {scalar_t__ state; int ctrlr_lock; } ;
 scalar_t__ C_STARTUP ;
 int __pxafb_backlight_power (struct pxafb_info*,int) ;
 int __pxafb_lcd_power (struct pxafb_info*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pxafb_disable_controller (struct pxafb_info*) ;
 int pxafb_enable_controller (struct pxafb_info*) ;

__attribute__((used)) static void set_ctrlr_state(struct pxafb_info *fbi, u_int state)
{
 u_int old_state;

 mutex_lock(&fbi->ctrlr_lock);

 old_state = fbi->state;




 if (old_state == C_STARTUP && state == 128)
  state = 131;

 switch (state) {
 case 133:




  if (old_state != 134 && old_state != 132) {
   fbi->state = state;

   pxafb_disable_controller(fbi);
  }
  break;

 case 132:
 case 134:



  if (old_state != 134) {
   fbi->state = state;
   __pxafb_backlight_power(fbi, 0);
   __pxafb_lcd_power(fbi, 0);
   if (old_state != 133)
    pxafb_disable_controller(fbi);
  }
  break;

 case 130:




  if (old_state == 133) {
   fbi->state = 131;
   pxafb_enable_controller(fbi);

  }
  break;

 case 128:





  if (old_state == 131) {
   __pxafb_lcd_power(fbi, 0);
   pxafb_disable_controller(fbi);
   pxafb_enable_controller(fbi);
   __pxafb_lcd_power(fbi, 1);
  }
  break;

 case 129:





  if (old_state != 132)
   break;


 case 131:




  if (old_state != 131) {
   fbi->state = 131;
   pxafb_enable_controller(fbi);
   __pxafb_lcd_power(fbi, 1);
   __pxafb_backlight_power(fbi, 1);
  }
  break;
 }
 mutex_unlock(&fbi->ctrlr_lock);
}
