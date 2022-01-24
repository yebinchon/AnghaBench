#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fb_info {int dummy; } ;
struct au1100fb_device {TYPE_1__* regs; } ;
struct TYPE_4__ {int panel_idx; } ;
struct TYPE_3__ {int /*<<< orphan*/  lcd_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCD_CONTROL_GO ; 
 int /*<<< orphan*/  PB1100_G_CONTROL ; 
 int PB1100_G_CONTROL_BL ; 
 int PB1100_G_CONTROL_VDD ; 
#define  VESA_HSYNC_SUSPEND 131 
#define  VESA_NO_BLANKING 130 
#define  VESA_POWERDOWN 129 
#define  VESA_VSYNC_SUSPEND 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ drv_info ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct fb_info*) ; 
 struct au1100fb_device* FUNC4 (struct fb_info*) ; 

__attribute__((used)) static int FUNC5(int blank_mode, struct fb_info *fbi)
{
	struct au1100fb_device *fbdev = FUNC4(fbi);

	FUNC3("fb_blank %d %p", blank_mode, fbi);

	switch (blank_mode) {

	case VESA_NO_BLANKING:
			/* Turn on panel */
			fbdev->regs->lcd_control |= LCD_CONTROL_GO;
#ifdef CONFIG_MIPS_PB1100
			if (drv_info.panel_idx == 1) {
				au_writew(au_readw(PB1100_G_CONTROL)
					  | (PB1100_G_CONTROL_BL | PB1100_G_CONTROL_VDD),
			PB1100_G_CONTROL);
			}
#endif
		FUNC1();
		break;

	case VESA_VSYNC_SUSPEND:
	case VESA_HSYNC_SUSPEND:
	case VESA_POWERDOWN:
			/* Turn off panel */
			fbdev->regs->lcd_control &= ~LCD_CONTROL_GO;
#ifdef CONFIG_MIPS_PB1100
			if (drv_info.panel_idx == 1) {
				au_writew(au_readw(PB1100_G_CONTROL)
				  	  & ~(PB1100_G_CONTROL_BL | PB1100_G_CONTROL_VDD),
			PB1100_G_CONTROL);
			}
#endif
		FUNC1();
		break;
	default:
		break;

	}
	return 0;
}