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
typedef  int WORD ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ MAC_REG_MISCFFCTL ; 
 scalar_t__ MAC_REG_MISCFFDATA ; 
 scalar_t__ MAC_REG_MISCFFNDEX ; 
 int MISCFFCTL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

void FUNC2 (DWORD_PTR dwIoBase, WORD wOffset, DWORD dwData)
{
    if (wOffset > 273)
        return;
    FUNC1(dwIoBase + MAC_REG_MISCFFNDEX, wOffset);
    FUNC0(dwIoBase + MAC_REG_MISCFFDATA, dwData);
    FUNC1(dwIoBase + MAC_REG_MISCFFCTL, MISCFFCTL_WRITE);
}