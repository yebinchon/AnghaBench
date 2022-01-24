#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int bEnableHostapd; } ;
typedef  TYPE_1__* PSDevice ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 

int FUNC2(PSDevice pDevice, int val, int rtnl_locked)
{
	if (val < 0 || val > 1)
		return -EINVAL;

	if (pDevice->bEnableHostapd == val)
		return 0;

	pDevice->bEnableHostapd = val;

	if (val)
		return FUNC1(pDevice, rtnl_locked);
	else
		return FUNC0(pDevice, rtnl_locked);
}