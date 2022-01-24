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
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ DWORD_PTR ;

/* Variables and functions */
 scalar_t__ MAC_REG_TMCTL1 ; 
 scalar_t__ MAC_REG_TMDATA1 ; 
 int TMCTL_TE ; 
 int TMCTL_TMD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2 (DWORD_PTR dwIoBase, UINT uDelayTime)
{
    FUNC0(dwIoBase + MAC_REG_TMCTL1, 0);
    FUNC1(dwIoBase + MAC_REG_TMDATA1, uDelayTime);
    FUNC0(dwIoBase + MAC_REG_TMCTL1, (TMCTL_TMD | TMCTL_TE));
}