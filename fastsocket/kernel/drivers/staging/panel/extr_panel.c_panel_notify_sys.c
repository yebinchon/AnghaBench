
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;



 scalar_t__ lcd_enabled ;
 scalar_t__ lcd_initialized ;
 int panel_lcd_print (char*) ;

__attribute__((used)) static int panel_notify_sys(struct notifier_block *this, unsigned long code,
       void *unused)
{
 if (lcd_enabled && lcd_initialized) {
  switch (code) {
  case 130:
   panel_lcd_print
       ("\x0cReloading\nSystem...\x1b[Lc\x1b[Lb\x1b[L+");
   break;
  case 129:
   panel_lcd_print
       ("\x0cSystem Halted.\x1b[Lc\x1b[Lb\x1b[L+");
   break;
  case 128:
   panel_lcd_print("\x0cPower off.\x1b[Lc\x1b[Lb\x1b[L+");
   break;
  default:
   break;
  }
 }
 return NOTIFY_DONE;
}
