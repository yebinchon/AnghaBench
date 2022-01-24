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
struct net_device {int dummy; } ;

/* Variables and functions */
 int EFUSE_CTRL ; 
 int EFUSE_TEST ; 
 int SYS_FUNC_EN ; 
 int SYS_ISO_CTRL ; 
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int) ; 

extern	void
FUNC2(struct net_device* dev)
{
	u8	Bytetemp = {0x00};
	u8	temp = {0x00};

	//Enable Digital Core Vdd : 0x2[13]=1
	Bytetemp = FUNC0(dev, SYS_FUNC_EN+1);
	temp = Bytetemp | 0x20;
	FUNC1(dev, SYS_FUNC_EN+1, temp);

	//EE loader to retention path1: attach 0x0[8]=0
	Bytetemp = FUNC0(dev, SYS_ISO_CTRL+1);
	temp = Bytetemp & 0xFE;
	FUNC1(dev, SYS_ISO_CTRL+1, temp);


	//Enable E-fuse use 2.5V LDO : 0x37[7]=1
	Bytetemp = FUNC0(dev, EFUSE_TEST+3);
	temp = Bytetemp | 0x80;
	FUNC1(dev, EFUSE_TEST+3, temp);

	//E-fuse clk switch from 500k to 40M : 0x2F8[1:0]=11b
	FUNC1(dev, 0x2F8, 0x3);

	//Set E-fuse program time & read time : 0x30[30:24]=1110010b
	FUNC1(dev, EFUSE_CTRL+3, 0x72);

}