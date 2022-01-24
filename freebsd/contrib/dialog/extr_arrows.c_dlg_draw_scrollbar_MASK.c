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
struct TYPE_2__ {scalar_t__ use_scrollbar; } ;

/* Variables and functions */
 int ACS_BLOCK ; 
 int /*<<< orphan*/  ACS_HLINE ; 
 int ACS_VLINE ; 
 scalar_t__ ARROWS_COL ; 
 int A_REVERSE ; 
 int FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ ,long) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (long) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WACS_BLOCK ; 
 int /*<<< orphan*/  border_attr ; 
 TYPE_1__ dialog_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  position_indicator_attr ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC18(WINDOW *win,
		   long first_data,
		   long this_data,
		   long next_data,
		   long total_data,
		   int left,
		   int right,
		   int top,
		   int bottom,
		   chtype attr,
		   chtype borderattr)
{
    char buffer[80];
    int percent;
    int len;
    int oldy, oldx;

    chtype save = FUNC10(win);
    int top_arrow = (first_data != 0);
    int bottom_arrow = (next_data < total_data);

    FUNC11(win, oldy, oldx);

    FUNC9(win, TRUE);
    if (bottom_arrow || top_arrow || dialog_state.use_scrollbar) {
	percent = (!total_data
		   ? 100
		   : (int) ((next_data * 100)
			    / total_data));

	if (percent < 0)
	    percent = 0;
	else if (percent > 100)
	    percent = 100;

	FUNC5(win, position_indicator_attr);
	(void) FUNC12(buffer, "%d%%", percent);
	(void) FUNC15(win, bottom, right - 7);
	(void) FUNC13(win, buffer);
	if ((len = FUNC7(buffer)) < 4) {
	    FUNC5(win, border_attr);
	    FUNC14(win, FUNC6(ACS_HLINE), 4 - len);
	}
    }
#define BARSIZE(num) (int) (0.5 + (double) ((all_high * (int) (num)) / (double) total_data))
#define ORDSIZE(num) (int) ((double) ((all_high * (int) (num)) / (double) all_diff))

    if (dialog_state.use_scrollbar) {
	int all_high = (bottom - top - 1);

	this_data = FUNC1(0, this_data);

	if (total_data > 0 && all_high > 0) {
	    int all_diff = (int) (total_data + 1);
	    int bar_diff = (int) (next_data + 1 - this_data);
	    int bar_high;
	    int bar_y;

	    bar_high = ORDSIZE(bar_diff);
	    if (bar_high <= 0)
		bar_high = 1;

	    if (bar_high < all_high) {
		int bar_last = BARSIZE(next_data);

		FUNC15(win, top + 1, right);

		FUNC5(win, save);
		FUNC16(win, ACS_VLINE | A_REVERSE, all_high);

		bar_y = ORDSIZE(this_data);
		if (bar_y >= bar_last && bar_y > 0)
		    bar_y = bar_last - 1;
		if (bar_last - bar_y > bar_high && bar_high > 1)
		    ++bar_y;
		bar_last = FUNC2(bar_last, all_high);

		FUNC15(win, top + 1 + bar_y, right);

		FUNC5(win, position_indicator_attr);
		FUNC4(win, A_REVERSE);
#if defined(WACS_BLOCK) && defined(NCURSES_VERSION) && defined(USE_WIDE_CURSES)
		wvline_set(win, WACS_BLOCK, bar_last - bar_y);
#else
		FUNC16(win, ACS_BLOCK, bar_last - bar_y);
#endif
	    }
	}
    }
    FUNC8(win,
		     top_arrow,
		     bottom_arrow,
		     left + ARROWS_COL,
		     top,
		     bottom,
		     attr,
		     borderattr);

    FUNC5(win, save);
    FUNC15(win, oldy, oldx);
}