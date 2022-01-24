#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct panel_settings {int mode_clkcontrol; int mode_auxpll; int mode_toyclksrc; int mode_screen; int mode_horztiming; int mode_verttiming; int mode_pwmdiv; int mode_pwmhi; int mode_outmask; int mode_fifoctrl; int /*<<< orphan*/  (* device_init ) () ;int /*<<< orphan*/  Yres; int /*<<< orphan*/  Xres; int /*<<< orphan*/  name; int /*<<< orphan*/  (* device_shutdown ) () ;} ;
struct TYPE_7__ {int cursorctrl; int cursorpos; int cursorcolor0; int cursorcolor1; int cursorcolor2; int cursorcolor3; } ;
struct TYPE_10__ {int winenable; int screen; int intstatus; int horztiming; int verttiming; int clkcontrol; int pwmdiv; int pwmhi; int outmask; int fifoctrl; int intenable; int backcolor; int colorkey; int colorkeymsk; TYPE_2__ hwc; TYPE_1__* window; } ;
struct TYPE_9__ {int mode_backcolor; int mode_colorkey; int mode_colorkeymsk; TYPE_3__* w; } ;
struct TYPE_8__ {int /*<<< orphan*/  ypos; int /*<<< orphan*/  xpos; } ;
struct TYPE_6__ {int winctrl0; int winctrl1; int winctrl2; int winbuf0; int winbuf1; int winbufctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LCD_CLKCONTROL_EXT ; 
 int LCD_INT_SD ; 
 int LCD_INT_SS ; 
 int LCD_SCREEN_SEN ; 
 int /*<<< orphan*/  SYS_AUXPLL ; 
 int /*<<< orphan*/  SYS_CLKSRC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fbdev ; 
 TYPE_5__* lcd ; 
 struct panel_settings* panel ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_4__* win ; 

__attribute__((used)) static void FUNC8 (struct panel_settings *newpanel)
{
	/*
	 * Perform global setup/init of LCD controller
	 */
	uint32 winenable;

	/* Make sure all windows disabled */
	winenable = lcd->winenable;
	lcd->winenable = 0;
	FUNC3();
	/*
	 * Ensure everything is disabled before reconfiguring
	 */
	if (lcd->screen & LCD_SCREEN_SEN) {
		/* Wait for vertical sync period */
		lcd->intstatus = LCD_INT_SS;
		while ((lcd->intstatus & LCD_INT_SS) == 0) {
			FUNC3();
		}

		lcd->screen &= ~LCD_SCREEN_SEN;	/*disable the controller*/

		do {
			lcd->intstatus = lcd->intstatus; /*clear interrupts*/
			FUNC3();
		/*wait for controller to shut down*/
		} while ((lcd->intstatus & LCD_INT_SD) == 0);

		/* Call shutdown of current panel (if up) */
		/* this must occur last, because if an external clock is driving
		    the controller, the clock cannot be turned off before first
			shutting down the controller.
		 */
		if (panel->device_shutdown != NULL)
			panel->device_shutdown();
	}

	/* Newpanel == NULL indicates a shutdown operation only */
	if (newpanel == NULL)
		return;

	panel = newpanel;

	FUNC5("Panel(%s), %dx%d\n", panel->name, panel->Xres, panel->Yres);

	/*
	 * Setup clocking if internal LCD clock source (assumes sys_auxpll valid)
	 */
	if (!(panel->mode_clkcontrol & LCD_CLKCONTROL_EXT))
	{
		uint32 sys_clksrc;
		FUNC4(panel->mode_auxpll, SYS_AUXPLL);
		sys_clksrc = FUNC2(SYS_CLKSRC) & ~0x0000001f;
		sys_clksrc |= panel->mode_toyclksrc;
		FUNC4(sys_clksrc, SYS_CLKSRC);
	}

	/*
	 * Configure panel timings
	 */
	lcd->screen = panel->mode_screen;
	lcd->horztiming = panel->mode_horztiming;
	lcd->verttiming = panel->mode_verttiming;
	lcd->clkcontrol = panel->mode_clkcontrol;
	lcd->pwmdiv = panel->mode_pwmdiv;
	lcd->pwmhi = panel->mode_pwmhi;
	lcd->outmask = panel->mode_outmask;
	lcd->fifoctrl = panel->mode_fifoctrl;
	FUNC3();

	/* fixme: Check window settings to make sure still valid
	 * for new geometry */
#if 0
	au1200_setlocation(fbdev, 0, win->w[0].xpos, win->w[0].ypos);
	au1200_setlocation(fbdev, 1, win->w[1].xpos, win->w[1].ypos);
	au1200_setlocation(fbdev, 2, win->w[2].xpos, win->w[2].ypos);
	au1200_setlocation(fbdev, 3, win->w[3].xpos, win->w[3].ypos);
#endif
	lcd->winenable = winenable;

	/*
	 * Re-enable screen now that it is configured
	 */
	lcd->screen |= LCD_SCREEN_SEN;
	FUNC3();

	/* Call init of panel */
	if (panel->device_init != NULL) panel->device_init();

	/* FIX!!!! not appropriate on panel change!!! Global setup/init */
	lcd->intenable = 0;
	lcd->intstatus = ~0;
	lcd->backcolor = win->mode_backcolor;

	/* Setup Color Key - FIX!!! */
	lcd->colorkey = win->mode_colorkey;
	lcd->colorkeymsk = win->mode_colorkeymsk;

	/* Setup HWCursor - FIX!!! Need to support this eventually */
	lcd->hwc.cursorctrl = 0;
	lcd->hwc.cursorpos = 0;
	lcd->hwc.cursorcolor0 = 0;
	lcd->hwc.cursorcolor1 = 0;
	lcd->hwc.cursorcolor2 = 0;
	lcd->hwc.cursorcolor3 = 0;


#if 0
#define D(X) printk("%25s: %08X\n", #X, X)
	D(lcd->screen);
	D(lcd->horztiming);
	D(lcd->verttiming);
	D(lcd->clkcontrol);
	D(lcd->pwmdiv);
	D(lcd->pwmhi);
	D(lcd->outmask);
	D(lcd->fifoctrl);
	D(lcd->window[0].winctrl0);
	D(lcd->window[0].winctrl1);
	D(lcd->window[0].winctrl2);
	D(lcd->window[0].winbuf0);
	D(lcd->window[0].winbuf1);
	D(lcd->window[0].winbufctrl);
	D(lcd->window[1].winctrl0);
	D(lcd->window[1].winctrl1);
	D(lcd->window[1].winctrl2);
	D(lcd->window[1].winbuf0);
	D(lcd->window[1].winbuf1);
	D(lcd->window[1].winbufctrl);
	D(lcd->window[2].winctrl0);
	D(lcd->window[2].winctrl1);
	D(lcd->window[2].winctrl2);
	D(lcd->window[2].winbuf0);
	D(lcd->window[2].winbuf1);
	D(lcd->window[2].winbufctrl);
	D(lcd->window[3].winctrl0);
	D(lcd->window[3].winctrl1);
	D(lcd->window[3].winctrl2);
	D(lcd->window[3].winbuf0);
	D(lcd->window[3].winbuf1);
	D(lcd->window[3].winbufctrl);
	D(lcd->winenable);
	D(lcd->intenable);
	D(lcd->intstatus);
	D(lcd->backcolor);
	D(lcd->winenable);
	D(lcd->colorkey);
    D(lcd->colorkeymsk);
	D(lcd->hwc.cursorctrl);
	D(lcd->hwc.cursorpos);
	D(lcd->hwc.cursorcolor0);
	D(lcd->hwc.cursorcolor1);
	D(lcd->hwc.cursorcolor2);
	D(lcd->hwc.cursorcolor3);
#endif
}