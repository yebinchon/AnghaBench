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
struct TYPE_6__ {TYPE_1__* getc_callbacks; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* handle_getc ) (TYPE_1__*,int,int,int*) ;scalar_t__ input_ready; struct TYPE_5__* next; } ;
typedef  TYPE_1__ DIALOG_CALLBACK ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 () ; 
 TYPE_4__ dialog_state ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int*) ; 

int
FUNC3(int ch, int fkey, int *result)
{
    int code = FALSE;
    DIALOG_CALLBACK *p, *q;

    if ((p = dialog_state.getc_callbacks) != 0) {
	if (FUNC0() >= 0) {
	    do {
		q = p->next;
		if (p->input_ready) {
		    if (!(p->handle_getc(p, ch, fkey, result))) {
			FUNC1(p);
		    }
		}
	    } while ((p = q) != 0);
	}
	code = (dialog_state.getc_callbacks != 0);
    }
    return code;
}