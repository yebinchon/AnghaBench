
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;


 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int cr_panel_off () ;
 int cr_panel_on () ;

__attribute__((used)) static int cr_lcd_set_power(struct lcd_device *ld, int power)
{
 if (power == FB_BLANK_UNBLANK)
  cr_panel_on();
 if (power == FB_BLANK_POWERDOWN)
  cr_panel_off();

 return 0;
}
