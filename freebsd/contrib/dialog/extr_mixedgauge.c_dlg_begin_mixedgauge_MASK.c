#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  text; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {char const* title; scalar_t__* prompt; int height; int old_height; int width; int old_width; int item_no; int len_name; int len_text; int min_width; int /*<<< orphan*/  dialog; int /*<<< orphan*/  caption; scalar_t__ min_height; TYPE_3__* list; } ;
typedef  TYPE_1__ DIALOG_MIXEDGAUGE ;

/* Variables and functions */
 int /*<<< orphan*/  DIALOG_LISTITEM ; 
 scalar_t__ ERR ; 
 int /*<<< orphan*/  FALSE ; 
 int GUTTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MARGIN ; 
 scalar_t__ MIN_HIGH ; 
 int MIN_WIDE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  border2_attr ; 
 int /*<<< orphan*/  border_attr ; 
 scalar_t__* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dialog_attr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__*,int*,int*,scalar_t__,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdscr ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25(DIALOG_MIXEDGAUGE * dlg,
		     int *began,
		     const char *aTitle,
		     const char *aPrompt,
		     int aHeight,
		     int aWidth,
		     int aItemNo,
		     char **items)
{
    int n, y, x;

    if (!*began) {
	FUNC4(0);

	FUNC19(dlg, 0, sizeof(*dlg));
	dlg->title = aTitle;
	dlg->prompt = FUNC3(aPrompt);
	dlg->height = dlg->old_height = aHeight;
	dlg->width = dlg->old_width = aWidth;
	dlg->item_no = aItemNo;

	dlg->list = FUNC9(DIALOG_LISTITEM, (size_t) aItemNo);
	FUNC2(dlg->list, "dialog_mixedgauge");

	dlg->len_name = 0;
	dlg->len_text = 15;

	for (n = 0; n < aItemNo; ++n) {
	    int thisWidth = (int) FUNC22(FUNC0(n));
	    if (dlg->len_name < thisWidth)
		dlg->len_name = thisWidth;
	    dlg->list[n].name = FUNC0(n);
	    dlg->list[n].text = FUNC1(n);
	}

	dlg->min_height = MIN_HIGH + aItemNo;
	dlg->min_width = MIN_WIDE + dlg->len_name + GUTTER + dlg->len_text;

	if (dlg->prompt != 0 && *(dlg->prompt) != 0)
	    dlg->min_height += (2 * MARGIN);
#ifdef KEY_RESIZE
	nodelay(stdscr, TRUE);
#endif
    }
#ifdef KEY_RESIZE
    else {
	dlg_del_window(dlg->dialog);
	dlg->height = dlg->old_height;
	dlg->width = dlg->old_width;
    }
#endif

    FUNC6(dlg->title, dlg->prompt,
		  &(dlg->height),
		  &(dlg->width),
		  dlg->min_height,
		  dlg->min_width);
    FUNC17(dlg->height, dlg->width);
    FUNC10(dlg->height, dlg->width);

    /* center dialog box on screen */
    x = FUNC7(dlg->width);
    y = FUNC8(dlg->height);

    dlg->dialog = FUNC15(dlg->height, dlg->width, y, x);

    (void) FUNC23(dlg->dialog);
    FUNC12(dlg->dialog,
		  0, 0,
		  dlg->height,
		  dlg->width,
		  dialog_attr, border_attr, border2_attr);

    FUNC14(dlg->dialog, dlg->title);
    FUNC13(dlg->dialog, FALSE);

    if ((dlg->prompt != 0 && *(dlg->prompt) != 0)
	&& FUNC24(dlg->dialog, dlg->item_no, 0) != ERR) {
	dlg->caption = FUNC18(dlg->dialog,
				      dlg->height - dlg->item_no - (2 * MARGIN),
				      dlg->width,
				      y + dlg->item_no + (2 * MARGIN),
				      x);
	FUNC5(dlg->caption, dialog_attr);
	FUNC16(dlg->caption, dlg->prompt, dlg->height, dlg->width);
    }

    FUNC20(dlg->dialog,
		     dlg->height - 4,
		     2 + MARGIN,
		     2 + MARGIN,
		     dlg->width - 2 * (2 + MARGIN),
		     dialog_attr,
		     border_attr);

    *began += 1;
}