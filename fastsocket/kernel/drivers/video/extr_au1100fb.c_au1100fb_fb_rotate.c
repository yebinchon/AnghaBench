
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct au1100fb_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int lcd_control; } ;


 int LCD_CONTROL_GO ;
 int LCD_CONTROL_SM_BIT ;
 int LCD_CONTROL_SM_MASK ;
 int print_dbg (char*,struct fb_info*,int) ;
 struct au1100fb_device* to_au1100fb_device (struct fb_info*) ;

void au1100fb_fb_rotate(struct fb_info *fbi, int angle)
{
 struct au1100fb_device *fbdev = to_au1100fb_device(fbi);

 print_dbg("fb_rotate %p %d", fbi, angle);

 if (fbdev && (angle > 0) && !(angle % 90)) {

  fbdev->regs->lcd_control &= ~LCD_CONTROL_GO;

  fbdev->regs->lcd_control &= ~(LCD_CONTROL_SM_MASK);
  fbdev->regs->lcd_control |= ((angle/90) << LCD_CONTROL_SM_BIT);

  fbdev->regs->lcd_control |= LCD_CONTROL_GO;
 }
}
