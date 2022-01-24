#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int end_reached; int begin_reached; long page_length; long in_buf; long fd_bytes_read; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ MY_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_SIZE ; 
 int DLG_EXIT_CANCEL ; 
 int DLG_EXIT_OK ; 
 int FALSE ; 
 int KEY_RESIZE ; 
 int /*<<< orphan*/  PAGE_LENGTH ; 
 int /*<<< orphan*/  PAGE_WIDTH ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  dialog_attr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,long) ; 
 int FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static bool
FUNC9(MY_OBJ * obj, int height, int width, int key, char *search_term)
{
    int dir;
    long tempinx;
    long fpos;
    int result;
    bool found;
    bool temp, temp1;
    bool moved = FALSE;

    /* set search direction */
    dir = (key == '/' || key == 'n') ? 1 : 0;
    if (dir ? !obj->end_reached : !obj->begin_reached) {
	if (key == 'n' || key == 'N') {
	    if (search_term[0] == '\0') {	/* No search term yet */
		(void) FUNC1();
		return FALSE;
	    }
	    /* Get search term from user */
	} else if ((result = FUNC4(obj->text, search_term,
					     PAGE_LENGTH,
					     PAGE_WIDTH)) != DLG_EXIT_OK
		   || search_term[0] == '\0') {
#ifdef KEY_RESIZE
	    if (result == DLG_EXIT_CANCEL) {
		ungetch(key);
		ungetch(KEY_RESIZE);
		/* FALLTHRU */
	    }
#endif
	    /* ESC pressed, or no search term, reprint page to clear box */
	    FUNC2(obj->text, dialog_attr);
	    FUNC0(obj, obj->page_length);
	    return TRUE;
	}
	/* Save variables for restoring in case search term can't be found */
	tempinx = obj->in_buf;
	temp = obj->begin_reached;
	temp1 = obj->end_reached;
	fpos = FUNC3(obj) - obj->fd_bytes_read;
	/* update 'in_buf' to point to next (previous) line before
	   forward (backward) searching */
	FUNC0(obj, (dir
			 ? obj->page_length - 1
			 : obj->page_length + 1));
	if (dir) {		/* Forward search */
	    while ((found = FUNC6(obj, search_term)) == FALSE) {
		if (obj->end_reached)
		    break;
	    }
	} else {		/* Backward search */
	    while ((found = FUNC6(obj, search_term)) == FALSE) {
		if (obj->begin_reached)
		    break;
		FUNC0(obj, 2L);
	    }
	}
	if (found == FALSE) {	/* not found */
	    (void) FUNC1();
	    /* Restore program state to that before searching */
	    FUNC5(obj, fpos);

	    FUNC7(obj, BUF_SIZE);

	    obj->in_buf = tempinx;
	    obj->begin_reached = temp;
	    obj->end_reached = temp1;
	    /* move 'in_buf' to point to start of current page to
	     * re-print current page.  Note that 'in_buf' always points
	     * to start of next page, so this is necessary
	     */
	    FUNC0(obj, obj->page_length);
	} else {		/* Search term found */
	    FUNC0(obj, 1L);
	}
	/* Reprint page */
	FUNC2(obj->text, dialog_attr);
	moved = TRUE;
    } else {			/* no need to find */
	(void) FUNC1();
    }
    return moved;
}