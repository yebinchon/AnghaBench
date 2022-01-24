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
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ EFUSE_MAX_SIZE ; 
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct net_device*,scalar_t__,int*) ; 

__attribute__((used)) static	u16
FUNC2(struct net_device*	dev)
{
	bool bContinual = TRUE;

	u16 efuse_addr = 0;
	u8 hoffset=0,hworden=0;
	u8 efuse_data,word_cnts=0;

	//efuse_reg_ctrl(pAdapter,TRUE);//power on

	while (	bContinual &&
			FUNC1(dev, efuse_addr ,&efuse_data) &&
			(efuse_addr  < EFUSE_MAX_SIZE) )
	{
		if(efuse_data!=0xFF)
		{
			hoffset = (efuse_data>>4) & 0x0F;
			hworden =  efuse_data & 0x0F;
			word_cnts = FUNC0(hworden);
			//read next header
			efuse_addr = efuse_addr + (word_cnts*2)+1;
		}
		else
		{
			bContinual = FALSE ;
		}
	}

	//efuse_reg_ctrl(pAdapter,FALSE);//power off

	return efuse_addr;

}