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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  cb; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  work; int /*<<< orphan*/  skb_queue; struct ieee80211_local* local; } ;
struct ieee80211_ra_tid {int /*<<< orphan*/  tid; int /*<<< orphan*/  ra; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_SDATA_QUEUE_AGG_STOP ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct ieee80211_sub_if_data* FUNC5 (struct ieee80211_vif*) ; 

void FUNC6(struct ieee80211_vif *vif,
				     const u8 *ra, u16 tid)
{
	struct ieee80211_sub_if_data *sdata = FUNC5(vif);
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_ra_tid *ra_tid;
	struct sk_buff *skb = FUNC0(0);

	if (FUNC4(!skb))
		return;

	ra_tid = (struct ieee80211_ra_tid *) &skb->cb;
	FUNC2(&ra_tid->ra, ra, ETH_ALEN);
	ra_tid->tid = tid;

	skb->pkt_type = IEEE80211_SDATA_QUEUE_AGG_STOP;
	FUNC3(&sdata->skb_queue, skb);
	FUNC1(&local->hw, &sdata->work);
}