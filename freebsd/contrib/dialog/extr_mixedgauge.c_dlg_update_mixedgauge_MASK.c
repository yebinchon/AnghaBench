#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int chtype ;
struct TYPE_4__ {int width; int /*<<< orphan*/  dialog; scalar_t__ height; } ;
typedef  TYPE_1__ DIALOG_MIXEDGAUGE ;

/* Variables and functions */
 int A_REVERSE ; 
 int MARGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int gauge_attr ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int title_attr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(DIALOG_MIXEDGAUGE * dlg, int percent)
{
    int i, x;

    /*
     * Clear the area for the progress bar by filling it with spaces
     * in the title-attribute, and write the percentage with that
     * attribute.
     */
    (void) FUNC6(dlg->dialog, dlg->height - 3, 4);
    FUNC1(dlg->dialog, gauge_attr);

    for (i = 0; i < (dlg->width - 2 * (3 + MARGIN)); i++)
	(void) FUNC4(dlg->dialog, ' ');

    (void) FUNC6(dlg->dialog, dlg->height - 3, (dlg->width / 2) - 2);
    (void) FUNC7(dlg->dialog, "%3d%%", percent);

    /*
     * Now draw a bar in reverse, relative to the background.
     * The window attribute was useful for painting the background,
     * but requires some tweaks to reverse it.
     */
    x = (percent * (dlg->width - 2 * (3 + MARGIN))) / 100;
    if ((title_attr & A_REVERSE) != 0) {
	FUNC0(dlg->dialog, A_REVERSE);
    } else {
	FUNC1(dlg->dialog, A_REVERSE);
    }
    (void) FUNC6(dlg->dialog, dlg->height - 3, 4);
    for (i = 0; i < x; i++) {
	chtype ch = FUNC5(dlg->dialog);
	if (title_attr & A_REVERSE) {
	    ch &= ~A_REVERSE;
	}
	(void) FUNC4(dlg->dialog, ch);
    }
    FUNC3(dlg);
    FUNC2(dlg->dialog);
}