#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_auth_rq; } ;
struct ieee80211_device {TYPE_2__ associate_timer; TYPE_1__ softmac_stats; int /*<<< orphan*/  associate_seq; struct ieee80211_network current_network; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MFIE_TYPE_CHALLENGE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*) ; 
 struct sk_buff* FUNC5 (struct ieee80211_network*,struct ieee80211_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_device*,struct sk_buff*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

void FUNC12(struct ieee80211_device *ieee, u8 *challenge, int chlen)
{
	u8 *c;
	struct sk_buff *skb;
	struct ieee80211_network *beacon = &ieee->current_network;
//	int hlen = sizeof(struct ieee80211_authentication);
	FUNC2(&ieee->associate_timer);
	ieee->associate_seq++;
	ieee->softmac_stats.tx_auth_rq++;

	skb = FUNC5(beacon, ieee, chlen+2);
	if (!skb)
		FUNC4(ieee);
	else{
		c = FUNC9(skb, chlen+2);
		*(c++) = MFIE_TYPE_CHALLENGE;
		*(c++) = chlen;
		FUNC8(c, challenge, chlen);

		FUNC0("Sending authentication challenge response\n");

		FUNC6(ieee, skb, sizeof(struct ieee80211_hdr_3addr  ));

		FUNC10(skb, ieee);
		if (!FUNC11(&ieee->associate_timer)){
		//printk("=========>add timer again, to crash\n");
		ieee->associate_timer.expires = jiffies + (HZ / 2);
		FUNC1(&ieee->associate_timer);
		}
		FUNC3(skb);//edit by thomas
	}
	FUNC7(challenge);
}