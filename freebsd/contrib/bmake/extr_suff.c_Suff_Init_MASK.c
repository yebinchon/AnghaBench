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
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* srclist ; 
 void* suffClean ; 
 void* transforms ; 

void
FUNC2(void)
{
#ifdef CLEANUP
    suffClean = Lst_Init(FALSE);
#endif
    srclist = FUNC0(FALSE);
    transforms = FUNC0(FALSE);

    /*
     * Create null suffix for single-suffix rules (POSIX). The thing doesn't
     * actually go on the suffix list or everyone will think that's its
     * suffix.
     */
    FUNC1();
}