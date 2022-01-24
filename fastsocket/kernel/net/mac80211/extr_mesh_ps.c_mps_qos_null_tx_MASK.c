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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct sta_info {int /*<<< orphan*/  sdata; TYPE_1__ sta; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_QOS_CTL_EOSP ; 
 int /*<<< orphan*/  WLAN_STA_PS_STA ; 
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sta_info *sta)
{
	struct sk_buff *skb;

	skb = FUNC3(sta);
	if (!skb)
		return;

	FUNC2(sta->sdata, "announcing peer-specific power mode to %pM\n",
		sta->sta.addr);

	/* don't unintentionally start a MPSP */
	if (!FUNC4(sta, WLAN_STA_PS_STA)) {
		u8 *qc = FUNC0((void *) skb->data);

		qc[0] |= IEEE80211_QOS_CTL_EOSP;
	}

	FUNC1(sta->sdata, skb);
}