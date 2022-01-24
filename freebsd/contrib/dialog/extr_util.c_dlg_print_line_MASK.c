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
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_4__ {scalar_t__ text_only; } ;
struct TYPE_3__ {scalar_t__ colors; } ;

/* Variables and functions */
 int ESCAPE_LEN ; 
 int TAB ; 
 int FUNC0 (char const) ; 
 TYPE_2__ dialog_state ; 
 TYPE_1__ dialog_vars ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int* FUNC3 (char const*) ; 
 int* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,int*) ; 
 scalar_t__ FUNC8 (int) ; 

const char *
FUNC9(WINDOW *win,
	       chtype *attr,
	       const char *prompt,
	       int lm, int rm, int *x)
{
    const char *wrap_ptr;
    const char *test_ptr;
    const char *hide_ptr = 0;
    const int *cols = FUNC3(prompt);
    const int *indx = FUNC4(prompt);
    int wrap_inx = 0;
    int test_inx = 0;
    int cur_x = lm;
    int hidden = 0;
    int limit = FUNC1(prompt);
    int n;
    int tabbed = 0;

    *x = 1;

    /*
     * Set *test_ptr to the end of the line or the right margin (rm), whichever
     * is less, and set wrap_ptr to the end of the last word in the line.
     */
    for (n = 0; n < limit; ++n) {
	int ch = *(test_ptr = prompt + indx[test_inx]);
	if (ch == '\n' || ch == '\0' || cur_x >= (rm + hidden))
	    break;
	if (ch == TAB && n == 0) {
	    tabbed = 8;		/* workaround for leading tabs */
	} else if (FUNC8(FUNC0(ch))
		   && n != 0
		   && !FUNC8(FUNC0(prompt[indx[n - 1]]))) {
	    wrap_inx = n;
	    *x = cur_x;
	} else if (dialog_vars.colors && FUNC6(test_ptr)) {
	    hide_ptr = test_ptr;
	    hidden += ESCAPE_LEN;
	    n += (ESCAPE_LEN - 1);
	}
	cur_x = lm + tabbed + cols[n + 1];
	if (cur_x > (rm + hidden))
	    break;
	test_inx = n + 1;
    }

    /*
     * If the line doesn't reach the right margin in the middle of a word, then
     * we don't have to wrap it at the end of the previous word.
     */
    test_ptr = prompt + indx[test_inx];
    if (*test_ptr == '\n' || FUNC8(FUNC0(*test_ptr)) || *test_ptr == '\0') {
	wrap_inx = test_inx;
	while (wrap_inx > 0 && FUNC8(FUNC0(prompt[indx[wrap_inx - 1]]))) {
	    wrap_inx--;
	}
	*x = lm + indx[wrap_inx];
    } else if (*x == 1 && cur_x >= rm) {
	/*
	 * If the line has no spaces, then wrap it anyway at the right margin
	 */
	*x = rm;
	wrap_inx = test_inx;
    }
    wrap_ptr = prompt + indx[wrap_inx];
#ifdef USE_WIDE_CURSES
    if (UCH(*wrap_ptr) >= 128) {
	int combined = 0;
	while (is_combining(wrap_ptr, &combined)) {
	    ++wrap_ptr;
	}
    }
#endif

    /*
     * If we found hidden text past the last point that we will display,
     * discount that from the displayed length.
     */
    if ((hide_ptr != 0) && (hide_ptr >= wrap_ptr)) {
	hidden -= ESCAPE_LEN;
	test_ptr = wrap_ptr;
	while (test_ptr < wrap_ptr) {
	    if (dialog_vars.colors && FUNC6(test_ptr)) {
		hidden -= ESCAPE_LEN;
		test_ptr += ESCAPE_LEN;
	    } else {
		++test_ptr;
	    }
	}
    }

    /*
     * Print the line if we have a window pointer.  Otherwise this routine
     * is just being called for sizing the window.
     */
    if (dialog_state.text_only || win) {
	FUNC5(win, prompt, (cols[wrap_inx] - hidden), attr);
    }

    /* *x tells the calling function how long the line was */
    if (*x == 1) {
	*x = rm;
    }

    *x -= hidden;

    /* Find the start of the next line and return a pointer to it */
    test_ptr = wrap_ptr;
    while (FUNC8(FUNC0(*test_ptr)))
	test_ptr++;
    if (*test_ptr == '\n')
	test_ptr++;
    FUNC2(prompt);
    return (test_ptr);
}