#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tm {int tm_mday; int tm_wday; int tm_yday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_5__ {scalar_t__ iso_week; } ;
struct TYPE_4__ {int y; int x; int week_start; scalar_t__ height; int /*<<< orphan*/  parent; int /*<<< orphan*/  window; scalar_t__ width; } ;
typedef  TYPE_1__ BOX ;

/* Variables and functions */
 scalar_t__ ARROWS_COL ; 
 scalar_t__ ERR ; 
 int MARGIN ; 
 int MAX_DAYS ; 
 int MON_WIDE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct tm*,int) ; 
 TYPE_3__ dialog_vars ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  item_attr ; 
 int /*<<< orphan*/  item_selected_attr ; 
 int /*<<< orphan*/  menubox_attr ; 
 int /*<<< orphan*/  menubox_border2_attr ; 
 int /*<<< orphan*/  menubox_border_attr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int
FUNC10(BOX * data, struct tm *current)
{
    int cell_wide = MON_WIDE;
    int y, x, this_x = 0;
    int save_y = 0, save_x = 0;
    int day = current->tm_mday;
    int mday;
    int week = 0;
    int windx = 0;
    int *weeks = 0;
    int last = FUNC0(current, 0);
    int prev = FUNC0(current, -1);

    FUNC7(data->window);
    FUNC3(data->parent,
		  data->y - MARGIN, data->x - MARGIN,
		  data->height + (2 * MARGIN), data->width + (2 * MARGIN),
		  menubox_attr,
		  menubox_border_attr,
		  menubox_border2_attr);

    FUNC1(data->window, menubox_attr);	/* daynames headline */
    for (x = 0; x < MAX_DAYS; x++) {
	FUNC5(data->window,
		  0, (x + 1) * cell_wide, "%*.*s ",
		  cell_wide - 1,
		  cell_wide - 1,
		  FUNC6(x + data->week_start));
    }

    mday = ((6 + current->tm_mday -
	     current->tm_wday +
	     data->week_start) % MAX_DAYS) - MAX_DAYS;
    if (mday <= -MAX_DAYS)
	mday += MAX_DAYS;

    if (dialog_vars.iso_week) {
	weeks = FUNC4(current->tm_year + 1900, current->tm_mon + 1);
    } else {
	/* mday is now in the range -6 to 0. */
	week = (current->tm_yday + 6 + mday - current->tm_mday) / MAX_DAYS;
    }

    for (y = 1; mday < last; y++) {
	FUNC1(data->window, menubox_attr);	/* weeknumbers headline */
	FUNC5(data->window,
		  y, 0,
		  "%*d ",
		  cell_wide - 1,
		  weeks ? weeks[windx++] : ++week);
	for (x = 0; x < MAX_DAYS; x++) {
	    this_x = 1 + (x + 1) * cell_wide;
	    ++mday;
	    if (FUNC8(data->window, y, this_x) == ERR)
		continue;
	    FUNC1(data->window, item_attr);	/* not selected days */
	    if (mday == day) {
		FUNC1(data->window, item_selected_attr);	/* selected day */
		save_y = y;
		save_x = this_x;
	    }
	    if (mday > 0) {
		if (mday <= last) {
		    FUNC9(data->window, "%*d", cell_wide - 2, mday);
		} else if (mday == day) {
		    FUNC9(data->window, "%*d", cell_wide - 2, mday - last);
		}
	    } else if (mday == day) {
		FUNC9(data->window, "%*d", cell_wide - 2, mday + prev);
	    }
	}
	FUNC8(data->window, save_y, save_x);
    }
    /* just draw arrows - scrollbar is unsuitable here */
    FUNC2(data->parent, TRUE, TRUE,
		    data->x + ARROWS_COL,
		    data->y - 1,
		    data->y + data->height);

    return 0;
}