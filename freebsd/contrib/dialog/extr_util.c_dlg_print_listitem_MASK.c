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
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  A_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC1 (char const*) ; 
 int* FUNC2 (char const*) ; 
 int FUNC3 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  item_attr ; 
 int /*<<< orphan*/  item_selected_attr ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  tag_attr ; 
 int /*<<< orphan*/  tag_key_attr ; 
 int /*<<< orphan*/  tag_key_selected_attr ; 
 int /*<<< orphan*/  tag_selected_attr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int const) ; 

void
FUNC7(WINDOW *win,
		   const char *text,
		   int climit,
		   bool first,
		   int selected)
{
    chtype attr = A_NORMAL;
    int limit;
    const int *cols;
    chtype attrs[4];

    if (text == 0)
	text = "";

    if (first) {
	const int *indx = FUNC2(text);
	attrs[3] = tag_key_selected_attr;
	attrs[2] = tag_key_attr;
	attrs[1] = tag_selected_attr;
	attrs[0] = tag_attr;

	FUNC0(win, selected ? attrs[3] : attrs[2]);
	(void) FUNC6(win, text, indx[1]);

	if ((int) FUNC5(text) > indx[1]) {
	    limit = FUNC3(text, climit, 1);
	    if (limit > 1) {
		FUNC0(win, selected ? attrs[1] : attrs[0]);
		(void) FUNC6(win,
				text + indx[1],
				indx[limit] - indx[1]);
	    }
	}
    } else {
	attrs[1] = item_selected_attr;
	attrs[0] = item_attr;

	cols = FUNC1(text);
	limit = FUNC3(text, climit, 0);

	if (limit > 0) {
	    FUNC0(win, selected ? attrs[1] : attrs[0]);
	    FUNC4(win, text, cols[limit], &attr);
	}
    }
}