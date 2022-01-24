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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_auth_rq; } ;
struct ieee80211_device {TYPE_2__ associate_timer; TYPE_1__ softmac_stats; int /*<<< orphan*/  associate_seq; struct ieee80211_network current_network; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MFIE_TYPE_CHALLENGE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*) ; 
 struct sk_buff* FUNC3 (struct ieee80211_network*,struct ieee80211_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*,struct sk_buff*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct ieee80211_device*) ; 

void FUNC10(struct ieee80211_device *ieee, u8 *challenge, int chlen)
{
	u8 *c;
	struct sk_buff *skb;
	struct ieee80211_network *beacon = &ieee->current_network;
//	int hlen = sizeof(struct ieee80211_authentication);

	ieee->associate_seq++;
	ieee->softmac_stats.tx_auth_rq++;

	skb = FUNC3(beacon, ieee, chlen+2);
	if (!skb)
		FUNC2(ieee);
	else{
		c = FUNC8(skb, chlen+2);
		*(c++) = MFIE_TYPE_CHALLENGE;
		*(c++) = chlen;
		FUNC6(c, challenge, chlen);

		FUNC0("Sending authentication challenge response\n");

		FUNC4(ieee, skb, sizeof(struct ieee80211_hdr_3addr  ));

		FUNC9(skb, ieee);
		FUNC7(&ieee->associate_timer, jiffies + (HZ/2));
#if 0
		ieee->associate_timer.expires = jiffies + (HZ / 2);
		add_timer(&ieee->associate_timer);
#endif
		//dev_kfree_skb_any(skb);//edit by thomas
	}
	FUNC5(challenge);
}