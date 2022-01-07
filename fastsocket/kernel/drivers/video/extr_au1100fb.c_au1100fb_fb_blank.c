
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct au1100fb_device {TYPE_1__* regs; } ;
struct TYPE_4__ {int panel_idx; } ;
struct TYPE_3__ {int lcd_control; } ;


 int LCD_CONTROL_GO ;
 int PB1100_G_CONTROL ;
 int PB1100_G_CONTROL_BL ;
 int PB1100_G_CONTROL_VDD ;




 int au_readw (int ) ;
 int au_sync () ;
 int au_writew (int,int ) ;
 TYPE_2__ drv_info ;
 int print_dbg (char*,int,struct fb_info*) ;
 struct au1100fb_device* to_au1100fb_device (struct fb_info*) ;

__attribute__((used)) static int au1100fb_fb_blank(int blank_mode, struct fb_info *fbi)
{
 struct au1100fb_device *fbdev = to_au1100fb_device(fbi);

 print_dbg("fb_blank %d %p", blank_mode, fbi);

 switch (blank_mode) {

 case 130:

   fbdev->regs->lcd_control |= LCD_CONTROL_GO;







  au_sync();
  break;

 case 128:
 case 131:
 case 129:

   fbdev->regs->lcd_control &= ~LCD_CONTROL_GO;







  au_sync();
  break;
 default:
  break;

 }
 return 0;
}
