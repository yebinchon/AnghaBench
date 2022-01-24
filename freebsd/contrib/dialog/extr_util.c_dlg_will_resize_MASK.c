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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int ERR ; 
 int KEY_RESIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void
FUNC5(WINDOW *win)
{
    int n, ch, base;
    int caught = 0;

    FUNC1(win);
    FUNC4(win, 20);
    for (n = base = 0; n < base + 10; ++n) {
	if ((ch = FUNC3(win)) != ERR) {
	    if (ch == KEY_RESIZE) {
		base = n;
		++caught;
	    } else {
		FUNC2(ch);
		break;
	    }
	}
    }
    FUNC0("# caught %d KEY_RESIZE key%s\n",
		  1 + caught,
		  caught == 1 ? "" : "s");
}