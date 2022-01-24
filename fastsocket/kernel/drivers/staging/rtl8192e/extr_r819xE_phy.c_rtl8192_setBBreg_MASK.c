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
typedef  int u32 ;
struct net_device {int dummy; } ;
typedef  int OriginalValue ;

/* Variables and functions */
 int bMaskDWord ; 
 int FUNC0 (struct net_device*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int) ; 

void FUNC3(struct net_device* dev, u32 dwRegAddr, u32 dwBitMask, u32 dwData)
{

	u32 OriginalValue, BitShift, NewValue;

	if(dwBitMask!= bMaskDWord)
	{//if not "double word" write
		OriginalValue = FUNC0(dev, dwRegAddr);
		BitShift = FUNC1(dwBitMask);
            	NewValue = (((OriginalValue) & (~dwBitMask)) | (dwData << BitShift));
		FUNC2(dev, dwRegAddr, NewValue);
	}else
		FUNC2(dev, dwRegAddr, dwData);
	return;
}