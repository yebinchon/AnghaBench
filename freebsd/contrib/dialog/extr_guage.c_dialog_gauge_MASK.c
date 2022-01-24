#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  keep_win; scalar_t__ input; scalar_t__ caller; int /*<<< orphan*/  win; } ;
struct TYPE_7__ {int percent; TYPE_3__ obj; } ;
typedef  TYPE_1__ MY_OBJ ;
typedef  int /*<<< orphan*/  DIALOG_CALLBACK ;

/* Variables and functions */
 int DLG_EXIT_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FALSE ; 
 int KEY_RESIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char const*,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int,int,int*) ; 
 int /*<<< orphan*/  my_cleanup ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 

int
FUNC16(const char *title,
	     const char *cprompt,
	     int height,
	     int width,
	     int percent)
{
    int fkey;
    int ch, result;
    void *objptr = FUNC4(title, cprompt, height, width, percent);
    MY_OBJ *obj = (MY_OBJ *) objptr;

    FUNC0(("# gauge args:\n"));
    FUNC2("title", title);
    FUNC2("message", cprompt);
    FUNC1("height", height);
    FUNC1("width", width);
    FUNC1("percent", percent);

    FUNC3((DIALOG_CALLBACK **) & obj, my_cleanup);
    FUNC11(obj, percent);

    FUNC10(obj->obj.win);
    do {
	ch = FUNC7(obj->obj.win, &fkey);
#ifdef KEY_RESIZE
	if (fkey && ch == KEY_RESIZE) {
	    MY_OBJ *oldobj = obj;

	    dlg_will_resize(obj->obj.win);
	    dlg_mouse_free_regions();

	    obj = dlg_allocate_gauge(title,
				     cprompt,
				     height,
				     width,
				     oldobj->percent);

	    /* avoid breaking new window in dlg_remove_callback */
	    oldobj->obj.caller = 0;
	    oldobj->obj.input = 0;
	    oldobj->obj.keep_win = FALSE;

	    /* remove the old version of the gauge */
	    dlg_clear();
	    dlg_remove_callback(&(oldobj->obj));
	    refresh();

	    dlg_add_callback_ref((DIALOG_CALLBACK **) & obj, my_cleanup);
	    dlg_update_gauge(obj, obj->percent);
	}
#endif
    }
    while (FUNC15(obj) && FUNC13(&(obj->obj), ch, fkey, &result));

    FUNC6(obj);

    return (DLG_EXIT_OK);
}