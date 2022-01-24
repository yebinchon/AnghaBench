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
struct TYPE_2__ {scalar_t__ help_button; scalar_t__ extra_button; } ;

/* Variables and functions */
 TYPE_1__ dialog_vars ; 
 char* FUNC0 () ; 
 char* FUNC1 () ; 
 char* FUNC2 () ; 

const char **
FUNC3(void)
{
    static const char *labels[4];
    int n = 0;

    labels[n++] = FUNC2();
    if (dialog_vars.extra_button)
	labels[n++] = FUNC0();
    if (dialog_vars.help_button)
	labels[n++] = FUNC1();
    labels[n] = 0;
    return labels;
}