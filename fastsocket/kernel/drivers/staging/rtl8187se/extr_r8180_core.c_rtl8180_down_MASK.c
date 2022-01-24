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
struct r8180_priv {scalar_t__ up; TYPE_1__* ieee80211; int /*<<< orphan*/  SwAntennaDiversityTimer; int /*<<< orphan*/  rateadapter_timer; int /*<<< orphan*/  watch_dog_timer; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  current_network; int /*<<< orphan*/  tx_pw_wq; int /*<<< orphan*/  hw_dig_wq; int /*<<< orphan*/  hw_sleep_wq; int /*<<< orphan*/  hw_wakeup_wq; int /*<<< orphan*/  rate_adapter_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_NOLINK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eRfOff ; 
 struct r8180_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

int FUNC10(struct net_device *dev)
{
	struct r8180_priv *priv = FUNC3(dev);

	if (priv->up == 0)
		return -1;

	priv->up=0;

	FUNC4(priv->ieee80211);
	/* FIXME */
	if (!FUNC6(dev))
		FUNC7(dev);
	FUNC9(dev);
	FUNC8(dev);
	FUNC2(&priv->watch_dog_timer);
	FUNC2(&priv->rateadapter_timer);
	FUNC1(&priv->ieee80211->rate_adapter_wq);
	FUNC1(&priv->ieee80211->hw_wakeup_wq);
	FUNC1(&priv->ieee80211->hw_sleep_wq);
	FUNC1(&priv->ieee80211->hw_dig_wq);
	FUNC1(&priv->ieee80211->tx_pw_wq);
	FUNC2(&priv->SwAntennaDiversityTimer);
	FUNC0(dev,eRfOff);
	FUNC5(&(priv->ieee80211->current_network),0,sizeof(struct ieee80211_network));
	priv->ieee80211->state = IEEE80211_NOLINK;
	return 0;
}