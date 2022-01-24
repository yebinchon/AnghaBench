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
typedef  int /*<<< orphan*/  u16 ;
struct r8180_priv {int /*<<< orphan*/  chan; scalar_t__ card_8185; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {int /*<<< orphan*/  beacon_interval; scalar_t__ bssid; } ;
struct TYPE_2__ {struct ieee80211_network current_network; } ;

/* Variables and functions */
 scalar_t__ BEACON_INTERVAL ; 
 int /*<<< orphan*/  BEACON_INTERVAL_MASK ; 
 scalar_t__ BSSID ; 
 int /*<<< orphan*/  EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  EPROM_CMD_NORMAL ; 
 struct r8180_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC7(struct net_device *dev)
{
	struct r8180_priv *priv = FUNC0(dev);
	u16 beacon_interval;
	struct ieee80211_network *net = &priv->ieee80211->current_network;

	FUNC4(dev);

	FUNC3(dev,EPROM_CMD_CONFIG);

	FUNC5(dev,BSSID,((u32*)net->bssid)[0]);
	FUNC6(dev,BSSID+4,((u16*)net->bssid)[2]);

	beacon_interval  = FUNC1(dev,BEACON_INTERVAL);
	beacon_interval &= ~ BEACON_INTERVAL_MASK;
	beacon_interval |= net->beacon_interval;
	FUNC5(dev, BEACON_INTERVAL, beacon_interval);

	FUNC3(dev, EPROM_CMD_NORMAL);

	if(priv->card_8185)
		FUNC2(dev, priv->chan);
}