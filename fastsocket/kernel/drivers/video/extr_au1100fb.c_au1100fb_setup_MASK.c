#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int panel_idx; char* opt_mode; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__ drv_info ; 
 scalar_t__ FUNC1 (char) ; 
 TYPE_1__* known_lcd_panels ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int nocursor ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char**,char*) ; 

int FUNC9(char *options)
{
	char* this_opt;
	int num_panels = FUNC0(known_lcd_panels);
	char* mode = NULL;
	int panel_idx = 0;

	if (num_panels <= 0) {
		FUNC3("No LCD panels supported by driver!");
		return -EFAULT;
			}

	if (options) {
		while ((this_opt = FUNC8(&options,",")) != NULL) {
			/* Panel option */
			if (!FUNC7(this_opt, "panel:", 6)) {
				int i;
				this_opt += 6;
				for (i = 0; i < num_panels; i++) {
					if (!FUNC7(this_opt,
					      	     known_lcd_panels[i].name,
							FUNC6(this_opt))) {
						panel_idx = i;
						break;
					}
				}
				if (i >= num_panels) {
 					FUNC5("Panel %s not supported!", this_opt);
				}
			}
			if (!FUNC7(this_opt, "nocursor", 8)) {
				this_opt += 8;
				nocursor = 1;
				FUNC4("Cursor disabled");
			}
			/* Mode option (only option that start with digit) */
			else if (FUNC1(this_opt[0])) {
				mode = FUNC2(this_opt, GFP_KERNEL);
				if (!mode) {
					FUNC3("memory allocation failed");
					return -ENOMEM;
				}
			}
			/* Unsupported option */
			else {
				FUNC5("Unsupported option \"%s\"", this_opt);
			}
		}
	}

	drv_info.panel_idx = panel_idx;
	drv_info.opt_mode = mode;

	FUNC4("Panel=%s Mode=%s",
			known_lcd_panels[drv_info.panel_idx].name,
		      	drv_info.opt_mode ? drv_info.opt_mode : "default");

	return 0;
}