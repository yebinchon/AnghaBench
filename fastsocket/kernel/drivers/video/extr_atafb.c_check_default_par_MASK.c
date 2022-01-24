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
struct fb_var_screeninfo {int xres_virtual; int yres_virtual; int bits_per_pixel; void* activate; } ;

/* Variables and functions */
 void* FB_ACTIVATE_TEST ; 
 struct fb_var_screeninfo* atafb_predefined ; 
 unsigned long default_mem_req ; 
 int default_par ; 
 scalar_t__ FUNC0 (struct fb_var_screeninfo*,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(int detected_mode)
{
	char default_name[10];
	int i;
	struct fb_var_screeninfo var;
	unsigned long min_mem;

	/* First try the user supplied mode */
	if (default_par) {
		var = atafb_predefined[default_par - 1];
		var.activate = FB_ACTIVATE_TEST;
		if (FUNC0(&var, 1))
			default_par = 0;	/* failed */
	}
	/* Next is the autodetected one */
	if (!default_par) {
		var = atafb_predefined[detected_mode - 1]; /* autodetect */
		var.activate = FB_ACTIVATE_TEST;
		if (!FUNC0(&var, 1))
			default_par = detected_mode;
	}
	/* If that also failed, try some default modes... */
	if (!default_par) {
		/* try default1, default2... */
		for (i = 1; i < 10; i++) {
			FUNC3(default_name,"default%d", i);
			default_par = FUNC1(default_name);
			if (!default_par)
				FUNC2("can't set default video mode");
			var = atafb_predefined[default_par - 1];
			var.activate = FB_ACTIVATE_TEST;
			if (!FUNC0(&var,1))
				break;	/* ok */
		}
	}
	min_mem = var.xres_virtual * var.yres_virtual * var.bits_per_pixel / 8;
	if (default_mem_req < min_mem)
		default_mem_req = min_mem;
}