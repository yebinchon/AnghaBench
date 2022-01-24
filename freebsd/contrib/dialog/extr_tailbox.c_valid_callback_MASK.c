#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* getc_callbacks; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ DIALOG_CALLBACK ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 TYPE_3__ dialog_state ; 

__attribute__((used)) static bool
FUNC0(DIALOG_CALLBACK * cb)
{
    bool valid = FALSE;
    DIALOG_CALLBACK *p;
    for (p = dialog_state.getc_callbacks; p != 0; p = p->next) {
	if (p == cb) {
	    valid = TRUE;
	    break;
	}
    }
    return valid;
}