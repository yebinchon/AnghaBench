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
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAC_LB_INTERNAL ; 
 int /*<<< orphan*/  MAC_LB_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC3 (DWORD_PTR dwIoBase)
{
    // disable MAC IMR
    FUNC1(dwIoBase);
    FUNC2(dwIoBase, MAC_LB_INTERNAL);
    // stop the adapter
    if (!FUNC0(dwIoBase)) {
        FUNC2(dwIoBase, MAC_LB_NONE);
        return FALSE;
    }
    FUNC2(dwIoBase, MAC_LB_NONE);
    return TRUE;
}