#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_2__ {scalar_t__ text_only; scalar_t__ text_width; scalar_t__ text_height; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_NORMAL ; 
 int MARGIN ; 
 int FUNC0 (int,int) ; 
 TYPE_1__ dialog_state ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC4(WINDOW *win,
	     const char *prompt,
	     int limit_y,
	     int limit_x,
	     int *high, int *wide)
{
    chtype attr = A_NORMAL;
    int x = (2 * MARGIN);
    int y = MARGIN;
    int max_x = 2;
    int lm = (2 * MARGIN);	/* left margin (box-border plus a space) */
    int rm = limit_x;		/* right margin */
    int bm = limit_y;		/* bottom margin */
    int last_y = 0, last_x = 0;

    dialog_state.text_height = 0;
    dialog_state.text_width = 0;
    if (dialog_state.text_only || win) {
	rm -= (2 * MARGIN);
	bm -= (2 * MARGIN);
    }
    if (prompt == 0)
	prompt = "";

    if (win != 0)
	FUNC2(win, last_y, last_x);
    while (y <= bm && *prompt) {
	x = lm;

	if (*prompt == '\n') {
	    while (*prompt == '\n' && y < bm) {
		if (*(prompt + 1) != '\0') {
		    ++y;
		    if (win != 0)
			(void) FUNC3(win, y, lm);
		}
		prompt++;
	    }
	} else if (win != 0)
	    (void) FUNC3(win, y, lm);

	if (*prompt) {
	    prompt = FUNC1(win, &attr, prompt, lm, rm, &x);
	    if (win != 0)
		FUNC2(win, last_y, last_x);
	}
	if (*prompt) {
	    ++y;
	    if (win != 0)
		(void) FUNC3(win, y, lm);
	}
	max_x = FUNC0(max_x, x);
    }
    /* Move back to the last position after drawing prompt, for msgbox. */
    if (win != 0)
	(void) FUNC3(win, last_y, last_x);

    /* Set the final height and width for the calling function */
    if (high != 0)
	*high = y;
    if (wide != 0)
	*wide = max_x;
}