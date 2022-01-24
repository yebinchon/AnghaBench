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

/* Variables and functions */
 int PWR_METER_EN ; 
 int FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(
	struct net_device *dev
)
{
	//struct r8180_priv *priv = (struct r8180_priv *)ieee80211_priv(dev);
	u32	u4bRfReg;

	u4bRfReg = FUNC0(dev, 0x02);

	// Enable Thermal meter indication.
	//printk("InitTxPwrTracking87SE(): Enable thermal meter indication, Write RF[0x02] = %#x", u4bRfReg|PWR_METER_EN);
	FUNC1(dev, 0x02, u4bRfReg|PWR_METER_EN);			FUNC2(1);
}