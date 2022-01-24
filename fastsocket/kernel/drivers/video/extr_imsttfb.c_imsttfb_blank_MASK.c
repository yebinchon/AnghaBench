#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct imstt_par {scalar_t__ ramdac; int* cmap_regs; int /*<<< orphan*/  dc_regs; } ;
struct fb_info {struct imstt_par* par; } ;
typedef  int __u32 ;

/* Variables and functions */
 void* CLKCTL ; 
#define  FB_BLANK_HSYNC_SUSPEND 131 
#define  FB_BLANK_NORMAL 130 
#define  FB_BLANK_POWERDOWN 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 scalar_t__ IBM ; 
 void* MISCTL1 ; 
 void* MISCTL2 ; 
 size_t PIDXDATA ; 
 size_t PIDXHI ; 
 size_t PIDXLO ; 
 void* PWRMNGMT ; 
 int /*<<< orphan*/  STGCTL ; 
 void* SYNCCTL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int 
FUNC3(int blank, struct fb_info *info)
{
	struct imstt_par *par = info->par;
	__u32 ctrl;

	ctrl = FUNC1(par->dc_regs, STGCTL);
	if (blank > 0) {
		switch (blank) {
		case FB_BLANK_NORMAL:
		case FB_BLANK_POWERDOWN:
			ctrl &= ~0x00000380;
			if (par->ramdac == IBM) {
				par->cmap_regs[PIDXHI] = 0;		FUNC0();
				par->cmap_regs[PIDXLO] = MISCTL2;	FUNC0();
				par->cmap_regs[PIDXDATA] = 0x55;	FUNC0();
				par->cmap_regs[PIDXLO] = MISCTL1;	FUNC0();
				par->cmap_regs[PIDXDATA] = 0x11;	FUNC0();
				par->cmap_regs[PIDXLO] = SYNCCTL;	FUNC0();
				par->cmap_regs[PIDXDATA] = 0x0f;	FUNC0();
				par->cmap_regs[PIDXLO] = PWRMNGMT;	FUNC0();
				par->cmap_regs[PIDXDATA] = 0x1f;	FUNC0();
				par->cmap_regs[PIDXLO] = CLKCTL;	FUNC0();
				par->cmap_regs[PIDXDATA] = 0xc0;
			}
			break;
		case FB_BLANK_VSYNC_SUSPEND:
			ctrl &= ~0x00000020;
			break;
		case FB_BLANK_HSYNC_SUSPEND:
			ctrl &= ~0x00000010;
			break;
		}
	} else {
		if (par->ramdac == IBM) {
			ctrl |= 0x000017b0;
			par->cmap_regs[PIDXHI] = 0;		FUNC0();
			par->cmap_regs[PIDXLO] = CLKCTL;	FUNC0();
			par->cmap_regs[PIDXDATA] = 0x01;	FUNC0();
			par->cmap_regs[PIDXLO] = PWRMNGMT;	FUNC0();
			par->cmap_regs[PIDXDATA] = 0x00;	FUNC0();
			par->cmap_regs[PIDXLO] = SYNCCTL;	FUNC0();
			par->cmap_regs[PIDXDATA] = 0x00;	FUNC0();
			par->cmap_regs[PIDXLO] = MISCTL1;	FUNC0();
			par->cmap_regs[PIDXDATA] = 0x01;	FUNC0();
			par->cmap_regs[PIDXLO] = MISCTL2;	FUNC0();
			par->cmap_regs[PIDXDATA] = 0x45;	FUNC0();
		} else
			ctrl |= 0x00001780;
	}
	FUNC2(par->dc_regs, STGCTL, ctrl);
	return 0;
}