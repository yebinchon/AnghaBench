#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_5__ {scalar_t__ name; scalar_t__ text_flen; int /*<<< orphan*/  name_y; int /*<<< orphan*/  text_y; } ;
typedef  TYPE_1__ DIALOG_FORMITEM ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC7(WINDOW *win, DIALOG_FORMITEM item[], int stepsize, int *choice, int *scrollamt)
{
    bool result = TRUE;
    int old_choice = *choice;
    int old_scroll = *scrollamt;
    int old_row = FUNC0(item[old_choice].text_y, item[old_choice].name_y);
    int target = old_scroll + stepsize;
    int n;

    if (stepsize < 0) {
	if (old_row != old_scroll)
	    target = old_scroll;
	else
	    target = old_scroll + stepsize;
	if (target < 0) {
	    result = FALSE;
	}
    } else {
	if (target > FUNC3(item)) {
	    result = FALSE;
	}
    }

    if (result) {
	for (n = 0; item[n].name != 0; ++n) {
	    if (item[n].text_flen > 0) {
		int new_row = FUNC0(item[n].text_y, item[n].name_y);
		if (FUNC1(new_row - target) < FUNC1(old_row - target)) {
		    old_row = new_row;
		    *choice = n;
		}
	    }
	}

	if (old_choice != *choice)
	    FUNC4(win, item + old_choice, *scrollamt, FALSE);

	*scrollamt = *choice;
	if (*scrollamt != old_scroll) {
	    FUNC5(win, TRUE);
	    FUNC6(win, *scrollamt - old_scroll);
	    FUNC5(win, FALSE);
	}
	result = (old_choice != *choice) || (old_scroll != *scrollamt);
    }
    if (!result)
	FUNC2();
    return result;
}