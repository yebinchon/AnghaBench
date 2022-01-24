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
typedef  int chtype ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_3__ {int current; int max_value; int min_value; int slide_len; int slide_inc; int slide_y; int slide_x; int value_x; int /*<<< orphan*/  value_len; int /*<<< orphan*/ * window; } ;
typedef  TYPE_1__ VALUE ;

/* Variables and functions */
 int A_REVERSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int dialog_attr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int gauge_attr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(VALUE * data, int value)
{
    if (value != data->current) {
	WINDOW *win = data->window;
	int y, x;
	int n;
	int ranges = (data->max_value + 1 - data->min_value);
	int offset = (value - data->min_value);
	int scaled;

	FUNC4(win, y, x);

	if (ranges > data->slide_len) {
	    scaled = (offset + data->slide_inc) / data->slide_inc;
	} else if (ranges < data->slide_len) {
	    scaled = (offset + 1) * data->slide_inc;
	} else {
	    scaled = offset;
	}

	FUNC2(win, gauge_attr);
	FUNC7(win, data->slide_y, data->slide_x);
	for (n = 0; n < data->slide_len; ++n) {
	    (void) FUNC5(win, ' ');
	}
	FUNC7(win, data->slide_y, data->value_x);
	FUNC8(win, "%*d", data->value_len, value);
	if ((gauge_attr & A_REVERSE) != 0) {
	    FUNC1(win, A_REVERSE);
	} else {
	    FUNC2(win, A_REVERSE);
	}
	FUNC7(win, data->slide_y, data->slide_x);
	for (n = 0; n < scaled; ++n) {
	    chtype ch2 = FUNC6(win);
	    if (gauge_attr & A_REVERSE) {
		ch2 &= ~A_REVERSE;
	    }
	    (void) FUNC5(win, ch2);
	}
	FUNC2(win, dialog_attr);

	FUNC7(win, y, x);
	data->current = value;

	FUNC0(("# drew %d offset %d scaled %d limit %d inc %d\n",
		   value,
		   offset,
		   scaled,
		   data->slide_len,
		   data->slide_inc));

	FUNC3(win);
    }
}