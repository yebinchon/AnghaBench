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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

extern void
FUNC3(	struct net_device*	dev,	u8 Type, u16 Offset, u32 *Value)
{
	//HAL_DATA_TYPE	*pHalData = GET_HAL_DATA(pAdapter);

	if (Type == 1)
		FUNC0(dev, Offset, (u8 *)Value);
	else if (Type == 2)
		FUNC1(dev, Offset, (u16 *)Value);
	else if (Type == 4)
		FUNC2(dev, Offset, (u32 *)Value);

}