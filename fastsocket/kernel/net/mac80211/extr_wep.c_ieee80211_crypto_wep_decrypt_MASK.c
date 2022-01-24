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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {struct sk_buff* skb; int /*<<< orphan*/  key; int /*<<< orphan*/  local; TYPE_1__* sta; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  ieee80211_rx_result ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  wep_weak_iv_count; } ;

/* Variables and functions */
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RX_CONTINUE ; 
 int /*<<< orphan*/  RX_DROP_UNUSABLE ; 
 int RX_FLAG_DECRYPTED ; 
 int RX_FLAG_IV_STRIPPED ; 
 scalar_t__ WEP_ICV_LEN ; 
 scalar_t__ WEP_IV_LEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 

ieee80211_rx_result
FUNC10(struct ieee80211_rx_data *rx)
{
	struct sk_buff *skb = rx->skb;
	struct ieee80211_rx_status *status = FUNC0(skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	__le16 fc = hdr->frame_control;

	if (!FUNC3(fc) && !FUNC2(fc))
		return RX_CONTINUE;

	if (!(status->flag & RX_FLAG_DECRYPTED)) {
		if (FUNC9(rx->skb))
			return RX_DROP_UNUSABLE;
		if (rx->sta && FUNC5(rx->skb, rx->key))
			rx->sta->wep_weak_iv_count++;
		if (FUNC4(rx->local, rx->skb, rx->key))
			return RX_DROP_UNUSABLE;
	} else if (!(status->flag & RX_FLAG_IV_STRIPPED)) {
		if (!FUNC7(rx->skb, FUNC1(fc) + WEP_IV_LEN))
			return RX_DROP_UNUSABLE;
		if (rx->sta && FUNC5(rx->skb, rx->key))
			rx->sta->wep_weak_iv_count++;
		FUNC6(rx->local, rx->skb, rx->key);
		/* remove ICV */
		if (FUNC8(rx->skb, rx->skb->len - WEP_ICV_LEN))
			return RX_DROP_UNUSABLE;
	}

	return RX_CONTINUE;
}