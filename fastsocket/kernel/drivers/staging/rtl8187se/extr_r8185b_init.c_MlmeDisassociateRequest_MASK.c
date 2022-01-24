#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct r8180_priv {TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int* bssid; } ;
struct TYPE_5__ {TYPE_1__ current_network; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int*,int*,int) ; 
 int /*<<< orphan*/  unspec_reason ; 

void
FUNC5(
	struct net_device *dev,
	u8*			asSta,
	u8			asRsn
	)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC3(dev);
	u8 i;

	FUNC1(priv->ieee80211, asSta, asRsn );

	if( FUNC4(priv->ieee80211->current_network.bssid, asSta, 6 ) == 0 ){
		//ShuChen TODO: change media status.
		//ShuChen TODO: What to do when disassociate.
		FUNC0(dev, unspec_reason);


	//	pMgntInfo->AsocTimestamp = 0;
		for(i=0;i<6;i++)  priv->ieee80211->current_network.bssid[i] = 0x22;
//		pMgntInfo->mBrates.Length = 0;
//		Adapter->HalFunc.SetHwRegHandler( Adapter, HW_VAR_BASIC_RATE, (pu1Byte)(&pMgntInfo->mBrates) );

		FUNC2(priv->ieee80211);


	}

}