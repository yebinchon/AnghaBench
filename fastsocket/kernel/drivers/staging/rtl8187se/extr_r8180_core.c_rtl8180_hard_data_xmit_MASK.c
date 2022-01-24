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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; int /*<<< orphan*/  priority; } ;
struct r8180_priv {int /*<<< orphan*/  tx_lock; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_hdr_3addr {short frame_ctl; } ;
struct TYPE_2__ {int iw_mode; scalar_t__ bHwRadioOff; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 short IEEE80211_FCTL_MOREFRAGS ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,scalar_t__,int /*<<< orphan*/ ,int,short,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(struct sk_buff *skb,struct net_device *dev, int
rate)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC4(dev);
	int mode;
	struct ieee80211_hdr_3addr  *h = (struct ieee80211_hdr_3addr  *) skb->data;
	short morefrag = (h->frame_ctl) & IEEE80211_FCTL_MOREFRAGS;
	unsigned long flags;
	int priority;

	mode = priv->ieee80211->iw_mode;

	rate = FUNC6(rate);
	/*
	* This function doesn't require lock because we make
	* sure it's called with the tx_lock already acquired.
	* this come from the kernel's hard_xmit callback (trought
	* the ieee stack, or from the try_wake_queue (again trought
	* the ieee stack.
	*/
	priority = FUNC0(skb->priority);
	FUNC8(&priv->tx_lock,flags);

	if(priv->ieee80211->bHwRadioOff)
	{
		FUNC9(&priv->tx_lock,flags);

		return;
	}

	if (!FUNC2(dev, priority)){
		FUNC1("Error: no descriptor left by previous TX (avail %d) ",
			FUNC3(dev, priority));
		FUNC5(priv->ieee80211);
	}
	FUNC7(dev, skb->data, skb->len, priority, morefrag,0,rate);
	if (!FUNC2(dev, priority))
		FUNC5(priv->ieee80211);

	FUNC9(&priv->tx_lock,flags);
}