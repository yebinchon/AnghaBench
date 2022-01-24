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
struct TYPE_2__ {scalar_t__ help_button; int /*<<< orphan*/  nook; int /*<<< orphan*/  nocancel; scalar_t__ extra_button; } ;
typedef  int /*<<< orphan*/  DIALOG_VARS ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ dialog_vars ; 
 char** FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 () ; 
 char* FUNC4 () ; 

const char **
FUNC5(void)
{
    const char **result;
    DIALOG_VARS save;

    if (dialog_vars.extra_button) {
	FUNC2(&save);
	dialog_vars.nocancel = TRUE;
	result = FUNC0();
	FUNC1(&save);
    } else {
	static const char *labels[3];
	int n = 0;

	if (!dialog_vars.nook)
	    labels[n++] = FUNC3();
	if (dialog_vars.help_button)
	    labels[n++] = FUNC4();
	if (n == 0)
	    labels[n++] = FUNC3();
	labels[n] = 0;

	result = labels;
    }
    return result;
}