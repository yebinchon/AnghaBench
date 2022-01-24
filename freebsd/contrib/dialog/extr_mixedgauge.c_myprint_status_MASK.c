#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int chtype ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_5__ {int height; int width; int len_text; int item_no; TYPE_1__* list; int /*<<< orphan*/ * dialog; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  text; } ;
typedef  TYPE_2__ DIALOG_MIXEDGAUGE ;

/* Variables and functions */
 int A_NORMAL ; 
 int A_REVERSE ; 
 int MARGIN ; 
 int dialog_attr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (char const*,char*,float*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int title_attr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(DIALOG_MIXEDGAUGE * dlg)
{
    WINDOW *win = dlg->dialog;
    int limit_y = dlg->height;
    int limit_x = dlg->width;

    int y = MARGIN;
    int item;
    int cells = dlg->len_text - 2;
    int lm = limit_x - dlg->len_text - 1;
    int bm = limit_y;		/* bottom margin */
    int last_y = 0, last_x = 0;
    int j, xxx;
    float percent;
    const char *status = "";
    char *freeMe = 0;

    bm -= (2 * MARGIN);
    FUNC4(win, last_y, last_x);
    for (item = 0; item < dlg->item_no; ++item) {
	chtype attr = A_NORMAL;

	y = item + MARGIN + 1;
	if (y > bm)
	    break;

	status = FUNC6(dlg->list[item].text, &freeMe);
	if (status == 0 || *status == 0)
	    continue;

	(void) FUNC11(win, y, 2 * MARGIN);
	FUNC1(win, dialog_attr);
	FUNC2(win, dlg->list[item].name, lm, &attr);

	(void) FUNC11(win, y, lm);
	(void) FUNC8(win, '[');
	(void) FUNC11(win, y, lm + (cells - (int) FUNC7(status)) / 2);
	if (freeMe) {
	    (void) FUNC11(win, y, lm + 1);
	    FUNC1(win, title_attr);
	    for (j = 0; j < cells; j++)
		(void) FUNC8(win, ' ');

	    (void) FUNC11(win, y, lm + (cells - (int) FUNC7(status)) / 2);
	    (void) FUNC9(win, status);

	    if ((title_attr & A_REVERSE) != 0) {
		FUNC0(win, A_REVERSE);
	    } else {
		FUNC1(win, A_REVERSE);
	    }
	    (void) FUNC11(win, y, lm + 1);

	    if (FUNC5(status, "%f%%", &percent) != 1)
		percent = 0.0;
	    xxx = (int) ((cells * (percent + 0.5)) / 100.0);
	    for (j = 0; j < xxx; j++) {
		chtype ch1 = FUNC10(win);
		if (title_attr & A_REVERSE) {
		    ch1 &= ~A_REVERSE;
		}
		(void) FUNC8(win, ch1);
	    }
	    FUNC3(freeMe);

	} else {
	    (void) FUNC11(win, y, lm + (cells - (int) FUNC7(status)) / 2);
	    (void) FUNC9(win, status);
	}
	(void) FUNC11(win, y, limit_x - 3);
	FUNC1(win, dialog_attr);
	(void) FUNC8(win, ']');
	(void) FUNC12(win);
    }
    if (win != 0)
	FUNC11(win, last_y, last_x);
}