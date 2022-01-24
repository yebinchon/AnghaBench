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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  txpowertable ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  ocr ;
typedef  int /*<<< orphan*/  macaddr ;
typedef  int /*<<< orphan*/  chipid ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_CCCR ; 
 int /*<<< orphan*/  EFUSE_CHIP_ID ; 
 int /*<<< orphan*/  EFUSE_MAC_ADDR ; 
 int /*<<< orphan*/  EFUSE_TXPW_TAB ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct net_device* dev)
{
	u8 chipid[2];
	u8 ocr[3];
	u8 macaddr[6];
	u8 txpowertable[28];

	FUNC1(chipid,0,sizeof(u8)*2);
	FUNC0(dev,EFUSE_CHIP_ID,chipid,sizeof(chipid));

	FUNC1(ocr,0,sizeof(u8)*3);
	FUNC0(dev,EFUSE_CCCR,ocr,sizeof(ocr));

	FUNC1(macaddr,0,sizeof(u8)*6);
	FUNC0(dev,EFUSE_MAC_ADDR,macaddr,sizeof(macaddr));

	FUNC1(txpowertable,0,sizeof(u8)*28);
	FUNC0(dev,EFUSE_TXPW_TAB,txpowertable,sizeof(txpowertable));
}