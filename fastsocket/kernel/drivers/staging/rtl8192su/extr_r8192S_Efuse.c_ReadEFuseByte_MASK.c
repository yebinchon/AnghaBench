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
 int FUNC0 (struct net_device*,scalar_t__) ; 
 int FUNC1 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,scalar_t__,int) ; 

void
FUNC3(struct net_device* dev,u16 _offset, u8 *pbuf)
{

	//u16 	indexk=0;
	u32  value32;
	u8 	readbyte;
	u16 	retry;


	//Write Address
	FUNC2(dev, EFUSE_CTRL+1, (_offset & 0xff));
	readbyte = FUNC0(dev, EFUSE_CTRL+2);
	FUNC2(dev, EFUSE_CTRL+2, ((_offset >> 8) & 0x03) | (readbyte & 0xfc));

	//Write bit 32 0
	readbyte = FUNC0(dev, EFUSE_CTRL+3);
	FUNC2(dev, EFUSE_CTRL+3, (readbyte & 0x7f));

	//Check bit 32 read-ready
	retry = 0;
	value32 = FUNC1(dev, EFUSE_CTRL);
	//while(!(((value32 >> 24) & 0xff) & 0x80)  && (retry<10))
	while(!(((value32 >> 24) & 0xff) & 0x80)  && (retry<10000))
	{
		value32 = FUNC1(dev, EFUSE_CTRL);
		retry++;
	}
	*pbuf = (u8)(value32 & 0xff);
}