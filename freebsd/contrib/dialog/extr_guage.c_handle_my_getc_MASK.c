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
struct TYPE_4__ {scalar_t__ input; } ;
typedef  int /*<<< orphan*/  MY_OBJ ;
typedef  TYPE_1__ DIALOG_CALLBACK ;

/* Variables and functions */
 int DLG_EXIT_OK ; 
 int ERR ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2(DIALOG_CALLBACK * cb, int ch, int fkey, int *result)
{
    bool status = TRUE;

    *result = DLG_EXIT_OK;
    if (cb != 0) {
	if (!fkey && (ch == ERR)) {
	    (void) FUNC0(cb);
	    /* cb might be freed in handle_input */
	    status = (FUNC1((MY_OBJ *) cb) && (cb->input != 0));
	}
    } else {
	status = FALSE;
    }
    return status;
}