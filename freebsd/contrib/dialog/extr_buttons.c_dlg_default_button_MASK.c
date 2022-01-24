#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int default_button; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ dialog_vars ; 
 int FUNC1 (int) ; 

int
FUNC2(void)
{
    int i, n;
    int result = 0;

    if (dialog_vars.default_button >= 0) {
	for (i = 0; (n = FUNC1(i)) >= 0; i++) {
	    if (n == dialog_vars.default_button) {
		result = i;
		break;
	    }
	}
    }
    FUNC0(("# dlg_default_button() = %d\n", result));
    return result;
}