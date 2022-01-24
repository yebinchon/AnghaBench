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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_3__ {int /*<<< orphan*/  atr; } ;
struct TYPE_4__ {TYPE_1__ shadow; } ;

/* Variables and functions */
 int A_CHARTEXT ; 
 TYPE_2__ dlg ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(WINDOW * win, int y, int x, int height, int width)
{
	int i;

	if (FUNC0()) {	/* Whether terminal supports color? */
		FUNC2(win, dlg.shadow.atr);
		FUNC4(win, y + height, x + 2);
		for (i = 0; i < width; i++)
			FUNC1(win, FUNC3(win) & A_CHARTEXT);
		for (i = y + 1; i < y + height + 1; i++) {
			FUNC4(win, i, x + width);
			FUNC1(win, FUNC3(win) & A_CHARTEXT);
			FUNC1(win, FUNC3(win) & A_CHARTEXT);
		}
		FUNC5(win);
	}
}