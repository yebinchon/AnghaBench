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
struct TYPE_4__ {int /*<<< orphan*/ * win; } ;
struct TYPE_5__ {int height; int width; int percent; int /*<<< orphan*/  prompt; int /*<<< orphan*/  title; TYPE_1__ obj; } ;
typedef  TYPE_2__ MY_OBJ ;

/* Variables and functions */
 int A_REVERSE ; 
 int /*<<< orphan*/  FALSE ; 
 int MARGIN ; 
 int /*<<< orphan*/  border2_attr ; 
 int /*<<< orphan*/  border_attr ; 
 int dialog_attr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int gauge_attr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(MY_OBJ * obj)
{
    WINDOW *dialog = obj->obj.win;
    int i, x;

    if (dialog != 0) {
	(void) FUNC7(dialog);
	FUNC2(dialog, 0, 0, obj->height, obj->width, dialog_attr,
		      border_attr, border2_attr);

	FUNC4(dialog, obj->title);

	FUNC1(dialog, dialog_attr);
	FUNC3(dialog, FALSE);
	FUNC5(dialog, obj->prompt, obj->height, obj->width);

	FUNC2(dialog,
		      obj->height - 4, 2 + MARGIN,
		      2 + MARGIN, obj->width - 2 * (2 + MARGIN),
		      dialog_attr,
		      border_attr,
		      border2_attr);

	/*
	 * Clear the area for the progress bar by filling it with spaces
	 * in the gauge-attribute, and write the percentage with that
	 * attribute.
	 */
	(void) FUNC9(dialog, obj->height - 3, 4);
	FUNC1(dialog, gauge_attr);

	for (i = 0; i < (obj->width - 2 * (3 + MARGIN)); i++)
	    (void) FUNC6(dialog, ' ');

	(void) FUNC9(dialog, obj->height - 3, (obj->width / 2) - 2);
	(void) FUNC10(dialog, "%3d%%", obj->percent);

	/*
	 * Now draw a bar in reverse, relative to the background.
	 * The window attribute was useful for painting the background,
	 * but requires some tweaks to reverse it.
	 */
	x = (obj->percent * (obj->width - 2 * (3 + MARGIN))) / 100;
	if ((gauge_attr & A_REVERSE) != 0) {
	    FUNC0(dialog, A_REVERSE);
	} else {
	    FUNC1(dialog, A_REVERSE);
	}
	(void) FUNC9(dialog, obj->height - 3, 4);
	for (i = 0; i < x; i++) {
	    chtype ch2 = FUNC8(dialog);
	    if (gauge_attr & A_REVERSE) {
		ch2 &= ~A_REVERSE;
	    }
	    (void) FUNC6(dialog, ch2);
	}

	(void) FUNC11(dialog);
    }
}