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
struct TYPE_2__ {scalar_t__ last_key; } ;

/* Variables and functions */
 TYPE_1__ dialog_vars ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int last_getc ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

void
FUNC4(int mode)
{
    if (dialog_vars.last_key) {
	if (mode >= 0) {
	    if (mode > 0) {
		FUNC4(-1);
	    } else {
		if (FUNC2())
		    FUNC0();
		FUNC4(-2);
	    }
	} else {
	    char temp[80];
	    FUNC3(temp, "%d", last_getc);
	    FUNC1(temp);
	    if (mode == -1)
		FUNC0();
	}
    }
}