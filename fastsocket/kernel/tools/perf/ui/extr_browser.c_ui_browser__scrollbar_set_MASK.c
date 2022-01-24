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
struct ui_browser {int height; int width; int y; int nr_entries; int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLSMG_CKBRD_CHAR ; 
 int /*<<< orphan*/  SLSMG_DIAMOND_CHAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_browser*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ui_browser *browser)
{
	int height = browser->height, h = 0, pct = 0,
	    col = browser->width,
	    row = browser->y - 1;

	if (browser->nr_entries > 1) {
		pct = ((browser->index * (browser->height - 1)) /
		       (browser->nr_entries - 1));
	}

	FUNC0(1);

	while (h < height) {
	        FUNC2(browser, row++, col);
		FUNC1(h == pct ? SLSMG_DIAMOND_CHAR : SLSMG_CKBRD_CHAR);
		++h;
	}

	FUNC0(0);
}