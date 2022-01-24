#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_6__ {scalar_t__ use_shadow; } ;
struct TYPE_5__ {int /*<<< orphan*/ * shadow; } ;
typedef  TYPE_1__ DIALOG_WINDOWS ;

/* Variables and functions */
 int SHADOW_COLS ; 
 int SHADOW_ROWS ; 
 TYPE_4__ dialog_state ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC6(WINDOW *win, int height, int width, int y, int x)
{
    DIALOG_WINDOWS *p;

    if (win != 0) {
	FUNC0(height, width);

	if ((p = FUNC2(win)) != 0) {
	    (void) FUNC5(win, height, width);
	    (void) FUNC3(win, y, x);
#ifdef HAVE_COLOR
	    if (p->shadow != 0) {
		if (dialog_state.use_shadow) {
		    (void) mvwin(p->shadow, y + SHADOW_ROWS, x + SHADOW_COLS);
		} else {
		    p->shadow = 0;
		}
	    }
#endif
	    (void) FUNC4();

#ifdef HAVE_COLOR
	    draw_childs_shadow(p);
#endif
	}
    }
}