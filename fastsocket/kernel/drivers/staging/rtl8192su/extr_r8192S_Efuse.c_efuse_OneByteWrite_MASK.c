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
typedef  int u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ EFUSE_CTRL ; 
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,scalar_t__,int) ; 

__attribute__((used)) static	u8
FUNC2(struct net_device* dev,  u16 addr, u8 data)
{
	u8 tmpidx = 0;
	u8 bResult;

	//RT_TRACE(COMP_EFUSE, "Addr = %x Data=%x\n", addr, data);

	//return	0;

	// -----------------e-fuse reg ctrl ---------------------------------
	//address
	FUNC1(dev, EFUSE_CTRL+1, (u8)(addr&0xff));
	FUNC1(dev, EFUSE_CTRL+2,
	FUNC0(dev, EFUSE_CTRL+2)|(u8)((addr>>8)&0x03) );

	FUNC1(dev, EFUSE_CTRL, data);//data
	FUNC1(dev, EFUSE_CTRL+3, 0xF2);//write cmd

	while((0x80 &  FUNC0(dev, EFUSE_CTRL+3)) && (tmpidx<100) ){
		tmpidx++;
	}

	if(tmpidx<100)
	{
		bResult = TRUE;
	}
	else
	{
		bResult = FALSE;
	}

	return bResult;
}