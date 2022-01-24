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
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ EFUSE_CTRL ; 
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,scalar_t__,int) ; 

int FUNC2(struct net_device* dev, u8 bRead, u16 addr, u8 *data)
{
	u32 bResult;
	//u8 efuse_ctlreg,tmpidx = 0;
	u8 tmpidx = 0;
	u8 tmpv8=0;

	// -----------------e-fuse reg ctrl ---------------------------------

	FUNC1(dev, EFUSE_CTRL+1, (u8)(addr&0xff));		//address
	tmpv8 = ((u8)((addr>>8) &0x03) ) | (FUNC0(dev, EFUSE_CTRL+2)&0xFC );
	FUNC1(dev, EFUSE_CTRL+2, tmpv8);

	if(TRUE==bRead){

		FUNC1(dev, EFUSE_CTRL+3,  0x72);//read cmd

		while(!(0x80 & FUNC0(dev, EFUSE_CTRL+3)) && (tmpidx<100) ){
			tmpidx++;
		}
		if(tmpidx<100){
			*data=FUNC0(dev, EFUSE_CTRL);
			bResult = TRUE;
		}
		else
		{
			*data = 0;
			bResult = FALSE;
		}

	}
	else{
		//return	0;
		FUNC1(dev, EFUSE_CTRL, *data);//data

		FUNC1(dev, EFUSE_CTRL+3, 0xF2);//write cmd

		while((0x80 & FUNC0(dev, EFUSE_CTRL+3)) && (tmpidx<100) ){
			tmpidx++;
		}
		if(tmpidx<100)
		{
			*data=FUNC0(dev, EFUSE_CTRL);
			bResult = TRUE;
		}
		else
		{
			*data = 0;
			bResult = FALSE;
		}

	}
	return bResult;
}