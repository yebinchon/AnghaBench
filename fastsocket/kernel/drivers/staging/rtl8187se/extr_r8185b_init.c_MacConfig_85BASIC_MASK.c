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
 int BIT2 ; 
 int IntMig ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int PHYPR ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int) ; 
 int TID_AC_MAP ; 
 int FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int) ; 

__attribute__((used)) static void
FUNC6(
	struct net_device *dev)
{

       u8			u1DA;
	FUNC0(dev);

	//============================================================================

	// Follow TID_AC_MAP of WMac.
	FUNC5(dev, TID_AC_MAP, 0xfa50);

	// Interrupt Migration, Jong suggested we use set 0x0000 first, 2005.12.14, by rcnjko.
	FUNC5(dev, IntMig, 0x0000);

	// Prevent TPC to cause CRC error. Added by Annie, 2006-06-10.
	FUNC2(dev, 0x1F0, 0x00000000);
	FUNC2(dev, 0x1F4, 0x00000000);
	FUNC1(dev, 0x1F8, 0x00);

	// Asked for by SD3 CM Lin, 2006.06.27, by rcnjko.
	//PlatformIOWrite4Byte(dev, RFTiming, 0x00004001);
//by amy
	// power save parameter based on "87SE power save parameters 20071127.doc", as follow.

	//Enable DA10 TX power saving
	u1DA = FUNC3(dev, PHYPR);
	FUNC4(dev, PHYPR, (u1DA | BIT2) );

	//POWER:
	FUNC5(dev, 0x360, 0x1000);
	FUNC5(dev, 0x362, 0x1000);

	// AFE.
	FUNC5(dev, 0x370, 0x0560);
	FUNC5(dev, 0x372, 0x0560);
	FUNC5(dev, 0x374, 0x0DA4);
	FUNC5(dev, 0x376, 0x0DA4);
	FUNC5(dev, 0x378, 0x0560);
	FUNC5(dev, 0x37A, 0x0560);
	FUNC5(dev, 0x37C, 0x00EC);
//	write_nic_word(dev, 0x37E, 0x00FE);//-edward
	FUNC5(dev, 0x37E, 0x00EC);//+edward
       FUNC4(dev, 0x24E,0x01);
//by amy

}