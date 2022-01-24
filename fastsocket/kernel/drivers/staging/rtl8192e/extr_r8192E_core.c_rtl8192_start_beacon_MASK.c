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
typedef  int u16 ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {int beacon_interval; } ;
struct TYPE_2__ {struct ieee80211_network current_network; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATIMWND ; 
 int /*<<< orphan*/  BCN_DMATIME ; 
 int /*<<< orphan*/  BCN_DRV_EARLY_INT ; 
 int /*<<< orphan*/  BCN_ERR_THRESH ; 
 int /*<<< orphan*/  BCN_INTERVAL ; 
 int /*<<< orphan*/  BCN_TCFG ; 
 int BCN_TCFG_CW_SHIFT ; 
 int BCN_TCFG_IFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct net_device *dev)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC1(dev);
	struct ieee80211_network *net = &priv->ieee80211->current_network;
	u16 BcnTimeCfg = 0;
        u16 BcnCW = 6;
        u16 BcnIFS = 0xf;

	FUNC0("Enabling beacon TX");
	//rtl8192_prepare_beacon(dev);
	FUNC2(dev);
	//rtl8192_beacon_tx_enable(dev);

	/* ATIM window */
	FUNC5(dev, ATIMWND, 2);

	/* Beacon interval (in unit of TU) */
	FUNC5(dev, BCN_INTERVAL, net->beacon_interval);

	/*
	 * DrvErlyInt (in unit of TU).
	 * (Time to send interrupt to notify driver to c
	 * hange beacon content)
	 * */
	FUNC5(dev, BCN_DRV_EARLY_INT, 10);

	/*
	 * BcnDMATIM(in unit of us).
	 * Indicates the time before TBTT to perform beacon queue DMA
	 * */
	FUNC5(dev, BCN_DMATIME, 256);

	/*
	 * Force beacon frame transmission even after receiving
	 * beacon frame from other ad hoc STA
	 * */
	FUNC4(dev, BCN_ERR_THRESH, 100);

	/* Set CW and IFS */
	BcnTimeCfg |= BcnCW<<BCN_TCFG_CW_SHIFT;
	BcnTimeCfg |= BcnIFS<<BCN_TCFG_IFS;
	FUNC5(dev, BCN_TCFG, BcnTimeCfg);


	/* enable the interrupt for ad-hoc process */
	FUNC3(dev);
}