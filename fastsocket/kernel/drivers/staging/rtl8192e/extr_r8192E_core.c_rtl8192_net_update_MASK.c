#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct r8192_priv {int basic_rate; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {int beacon_interval; scalar_t__ bssid; } ;
struct TYPE_2__ {scalar_t__ iw_mode; struct ieee80211_network current_network; } ;

/* Variables and functions */
 scalar_t__ ATIMWND ; 
 scalar_t__ BCN_DMATIME ; 
 scalar_t__ BCN_DRV_EARLY_INT ; 
 int /*<<< orphan*/  BCN_ERR_THRESH ; 
 scalar_t__ BCN_INTERVAL ; 
 scalar_t__ BCN_TCFG ; 
 int BCN_TCFG_CW_SHIFT ; 
 int BCN_TCFG_IFS ; 
 scalar_t__ BSSIDR ; 
 scalar_t__ IW_MODE_ADHOC ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{

	struct r8192_priv *priv = FUNC0(dev);
	struct ieee80211_network *net;
	u16 BcnTimeCfg = 0, BcnCW = 6, BcnIFS = 0xf;
	u16 rate_config = 0;
	net = &priv->ieee80211->current_network;
	//update Basic rate: RR, BRSR
	FUNC1(dev, &rate_config);
	// 2007.01.16, by Emily
	// Select RRSR (in Legacy-OFDM and CCK)
	// For 8190, we select only 24M, 12M, 6M, 11M, 5.5M, 2M, and 1M from the Basic rate.
	// We do not use other rates.
	 priv->basic_rate = rate_config &= 0x15f;
	//BSSID
	FUNC4(dev,BSSIDR,((u32*)net->bssid)[0]);
	FUNC5(dev,BSSIDR+4,((u16*)net->bssid)[2]);
#if 0
	//MSR
	rtl8192_update_msr(dev);
#endif


//	rtl8192_update_cap(dev, net->capability);
	if (priv->ieee80211->iw_mode == IW_MODE_ADHOC)
	{
		FUNC5(dev, ATIMWND, 2);
		FUNC5(dev, BCN_DMATIME, 256);
		FUNC5(dev, BCN_INTERVAL, net->beacon_interval);
	//	write_nic_word(dev, BcnIntTime, 100);
	//BIT15 of BCN_DRV_EARLY_INT will indicate whether software beacon or hw beacon is applied.
		FUNC5(dev, BCN_DRV_EARLY_INT, 10);
		FUNC3(dev, BCN_ERR_THRESH, 100);

		BcnTimeCfg |= (BcnCW<<BCN_TCFG_CW_SHIFT);
	// TODO: BcnIFS may required to be changed on ASIC
	 	BcnTimeCfg |= BcnIFS<<BCN_TCFG_IFS;

		FUNC5(dev, BCN_TCFG, BcnTimeCfg);
	}


}