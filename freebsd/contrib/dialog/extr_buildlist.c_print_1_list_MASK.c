#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_9__ {int /*<<< orphan*/ * items; TYPE_1__* list; } ;
struct TYPE_8__ {int /*<<< orphan*/  top_index; int /*<<< orphan*/ * win; } ;
typedef  TYPE_1__ MY_DATA ;
typedef  int /*<<< orphan*/  DIALOG_LISTITEM ;
typedef  TYPE_2__ ALL_DATA ;

/* Variables and functions */
 scalar_t__ ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(ALL_DATA * all,
	     int choice,
	     int selected)
{
    MY_DATA *data = all->list + selected;
    DIALOG_LISTITEM *target = (FUNC5(all, choice)
			       ? all->items + choice
			       : 0);
    WINDOW *win = data->win;
    int i, j;
    int last = 0;
    int top_row = FUNC2(all, data->top_index, selected);
    int max_rows = FUNC1(win);

    FUNC0(("! print_1_list %d %s, top %d\n", choice, FUNC4(selected), top_row));
    for (i = j = 0; j < max_rows; i++) {
	int ii = i + top_row;
	if (ii < 0) {
	    continue;
	} else if (FUNC3(data, ii)) {
	    FUNC6(all,
		       win,
		       FUNC3(data, ii),
		       j, FUNC3(data, ii) == target);
	    last = ++j;
	} else {
	    break;
	}
    }
    if (FUNC8(win, last, 0) != ERR) {
	while (FUNC7(win, ' ') != ERR) {
	    ;
	}
    }
    (void) FUNC9(win);
}