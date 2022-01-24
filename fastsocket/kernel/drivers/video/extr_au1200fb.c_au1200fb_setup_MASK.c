#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**) ; 
 TYPE_1__* known_lcd_panels ; 
 int nohwcursor ; 
 int panel_index ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 long FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char**,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
	char* options = NULL;
	char* this_opt;
	int num_panels = FUNC0(known_lcd_panels);
	int panel_idx = -1;

	FUNC1(DRIVER_NAME, &options);

	if (options) {
		while ((this_opt = FUNC6(&options,",")) != NULL) {
			/* Panel option - can be panel name,
			 * "bs" for board-switch, or number/index */
			if (!FUNC5(this_opt, "panel:", 6)) {
				int i;
				long int li;
				char *endptr;
				this_opt += 6;
				/* First check for index, which allows
				 * to short circuit this mess */
				li = FUNC3(this_opt, &endptr, 0);
				if (*endptr == '\0') {
					panel_idx = (int)li;
				}
				else if (FUNC4(this_opt, "bs") == 0) {
					extern int FUNC8(void);
					panel_idx = FUNC8();
				}

				else
				for (i = 0; i < num_panels; i++) {
					if (!FUNC4(this_opt, known_lcd_panels[i].name)) {
						panel_idx = i;
						break;
					}
				}

				if ((panel_idx < 0) || (panel_idx >= num_panels)) {
						FUNC2("Panel %s not supported!", this_opt);
				}
				else
					panel_index = panel_idx;
			}

			else if (FUNC5(this_opt, "nohwcursor", 10) == 0) {
				nohwcursor = 1;
			}

			/* Unsupported option */
			else {
				FUNC2("Unsupported option \"%s\"", this_opt);
			}
		}
	}
}