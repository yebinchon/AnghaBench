#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_if_managed {int flags; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; TYPE_1__ u; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;
struct ieee80211_hdr_3addr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FCTL_PM ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_STA_BEACON_POLL ; 
 int IEEE80211_STA_CONNECTION_POLL ; 
 int IEEE80211_TX_CTL_USE_MINRATE ; 
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ; 
 int IEEE80211_TX_INTFL_OFFCHAN_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 

void FUNC4(struct ieee80211_local *local,
			     struct ieee80211_sub_if_data *sdata,
			     int powersave)
{
	struct sk_buff *skb;
	struct ieee80211_hdr_3addr *nullfunc;
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

	skb = FUNC2(&local->hw, &sdata->vif);
	if (!skb)
		return;

	nullfunc = (struct ieee80211_hdr_3addr *) skb->data;
	if (powersave)
		nullfunc->frame_control |= FUNC1(IEEE80211_FCTL_PM);

	FUNC0(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT |
					IEEE80211_TX_INTFL_OFFCHAN_TX_OK;
	if (ifmgd->flags & (IEEE80211_STA_BEACON_POLL |
			    IEEE80211_STA_CONNECTION_POLL))
		FUNC0(skb)->flags |= IEEE80211_TX_CTL_USE_MINRATE;

	FUNC3(sdata, skb);
}