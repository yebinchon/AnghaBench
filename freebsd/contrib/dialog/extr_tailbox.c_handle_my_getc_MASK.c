#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  input; } ;
struct TYPE_7__ {int hscroll; scalar_t__ old_hscroll; int /*<<< orphan*/  buttons; } ;
typedef  TYPE_1__ MY_OBJ ;
typedef  TYPE_2__ DIALOG_CALLBACK ;

/* Variables and functions */
#define  DLGK_BEGIN 133 
#define  DLGK_ENTER 132 
#define  DLGK_GRID_LEFT 131 
#define  DLGK_GRID_RIGHT 130 
 int DLG_EXIT_ESC ; 
 int DLG_EXIT_OK ; 
 int EOF ; 
#define  ERR 129 
#define  ESC 128 
 int FALSE ; 
 int MAX_LEN ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC8(DIALOG_CALLBACK * cb, int ch, int fkey, int *result)
{
    MY_OBJ *obj = (MY_OBJ *) cb;
    bool done = FALSE;

    if (!FUNC7(cb))
	return FALSE;

    if (!fkey && FUNC2(ch, obj->buttons) == 0) {
	ch = DLGK_ENTER;
	fkey = TRUE;
    }

    if (fkey) {
	switch (ch) {
	case DLGK_ENTER:
	    *result = DLG_EXIT_OK;
	    done = TRUE;
	    break;
	case DLGK_BEGIN:	/* Beginning of line */
	    obj->hscroll = 0;
	    break;
	case DLGK_GRID_LEFT:	/* Scroll left */
	    if (obj->hscroll > 0) {
		obj->hscroll -= 1;
	    }
	    break;
	case DLGK_GRID_RIGHT:	/* Scroll right */
	    if (obj->hscroll < MAX_LEN)
		obj->hscroll += 1;
	    break;
	default:
	    FUNC0();
	    break;
	}
	if ((obj->hscroll != obj->old_hscroll))
	    FUNC5(obj);
    } else {
	switch (ch) {
	case ERR:
	    FUNC1(cb->input);
	    ch = FUNC3(cb->input);
	    (void) FUNC6(ch, cb->input);
	    if (ch != EOF) {
		FUNC4(cb);
	    }
	    break;
	case ESC:
	    done = TRUE;
	    *result = DLG_EXIT_ESC;
	    break;
	default:
	    FUNC0();
	    break;
	}
    }

    return !done;
}