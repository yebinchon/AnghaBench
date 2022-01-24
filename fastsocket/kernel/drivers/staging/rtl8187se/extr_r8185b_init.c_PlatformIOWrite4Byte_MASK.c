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
typedef  unsigned char u8 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned char BIT7 ; 
 scalar_t__ PhyAddr ; 
 unsigned char FUNC0 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,scalar_t__,scalar_t__) ; 

void
FUNC6(
	struct net_device *dev,
	u32		offset,
	u32		data
	)
{
//{by amy 080312
if (offset == PhyAddr)
	{//For Base Band configuration.
		unsigned char	cmdByte;
		unsigned long	dataBytes;
		unsigned char	idx;
		u8	u1bTmp;

		cmdByte = (u8)(data & 0x000000ff);
		dataBytes = data>>8;

		//
		// 071010, rcnjko:
		// The critical section is only BB read/write race condition.
		// Assumption:
		// 1. We assume NO one will access BB at DIRQL, otherwise, system will crash for
		// acquiring the spinlock in such context.
		// 2. PlatformIOWrite4Byte() MUST NOT be recursive.
		//
//		NdisAcquireSpinLock( &(pDevice->IoSpinLock) );

		for(idx = 0; idx < 30; idx++)
		{ // Make sure command bit is clear before access it.
			u1bTmp = FUNC0(dev, PhyAddr);
			if((u1bTmp & BIT7) == 0)
				break;
			else
				FUNC2(10);
		}

		for(idx=0; idx < 3; idx++)
		{
			FUNC1(dev,offset+1+idx,((u8*)&dataBytes)[idx] );
		}
		FUNC4(dev, offset, cmdByte);

//		NdisReleaseSpinLock( &(pDevice->IoSpinLock) );
	}
//by amy 080312}
	else{
		FUNC5(dev, offset, data);
		FUNC3(dev, offset); // To make sure write operation is completed, 2005.11.09, by rcnjko.
	}
}