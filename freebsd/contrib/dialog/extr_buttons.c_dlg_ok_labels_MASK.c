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
struct TYPE_2__ {scalar_t__ help_button; int /*<<< orphan*/  nocancel; scalar_t__ extra_button; int /*<<< orphan*/  nook; } ;

/* Variables and functions */
 TYPE_1__ dialog_vars ; 
 char* FUNC0 () ; 
 char* FUNC1 () ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 

const char **
FUNC4(void)
{
    static const char *labels[5];
    int n = 0;

    if (!dialog_vars.nook)
	labels[n++] = FUNC3();
    if (dialog_vars.extra_button)
	labels[n++] = FUNC1();
    if (!dialog_vars.nocancel)
	labels[n++] = FUNC0();
    if (dialog_vars.help_button)
	labels[n++] = FUNC2();
    labels[n] = 0;
    return labels;
}