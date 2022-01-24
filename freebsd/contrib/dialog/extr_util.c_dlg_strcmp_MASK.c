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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

int
FUNC4(const char *a, const char *b)
{
    int ac, bc, cmp;

    for (;;) {
	ac = FUNC0(*a++);
	bc = FUNC0(*b++);
	if (FUNC2(ac) && FUNC3(ac))
	    ac = FUNC1(ac);
	if (FUNC2(bc) && FUNC3(bc))
	    bc = FUNC1(bc);
	cmp = ac - bc;
	if (ac == 0 || bc == 0 || cmp != 0)
	    break;
    }
    return cmp;
}