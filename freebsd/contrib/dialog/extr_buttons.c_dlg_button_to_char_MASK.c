#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char const**) ; 

int
FUNC2(const char *label)
{
    int cmp = -1;

    while (*label != 0) {
	cmp = FUNC1(&label);
	if (FUNC0(cmp)) {
	    break;
	}
    }
    return cmp;
}