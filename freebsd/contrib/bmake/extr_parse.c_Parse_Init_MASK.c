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
 void* defIncPath ; 
 void* includes ; 
 int /*<<< orphan*/ * mainNode ; 
 void* parseIncPath ; 
 void* sysIncPath ; 
 void* targCmds ; 

void
FUNC1(void)
{
    mainNode = NULL;
    parseIncPath = FUNC0(FALSE);
    sysIncPath = FUNC0(FALSE);
    defIncPath = FUNC0(FALSE);
    includes = FUNC0(FALSE);
#ifdef CLEANUP
    targCmds = Lst_Init(FALSE);
#endif
}