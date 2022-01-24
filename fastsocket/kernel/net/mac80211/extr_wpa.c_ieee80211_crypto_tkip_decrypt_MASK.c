#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {int /*<<< orphan*/  tkip_iv16; int /*<<< orphan*/  tkip_iv32; int /*<<< orphan*/  security_idx; TYPE_3__* sta; TYPE_1__* local; struct sk_buff* skb; struct ieee80211_key* key; } ;
struct ieee80211_key {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  ieee80211_rx_result ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;
struct TYPE_4__ {int /*<<< orphan*/  wep_rx_tfm; } ;

/* Variables and functions */
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RX_CONTINUE ; 
 int /*<<< orphan*/  RX_DROP_UNUSABLE ; 
 int RX_FLAG_DECRYPTED ; 
 int TKIP_DECRYPT_OK ; 
 scalar_t__ TKIP_ICV_LEN ; 
 scalar_t__ TKIP_IV_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ieee80211_key*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 

ieee80211_rx_result
FUNC8(struct ieee80211_rx_data *rx)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) rx->skb->data;
	int hdrlen, res, hwaccel = 0;
	struct ieee80211_key *key = rx->key;
	struct sk_buff *skb = rx->skb;
	struct ieee80211_rx_status *status = FUNC0(skb);

	hdrlen = FUNC1(hdr->frame_control);

	if (!FUNC2(hdr->frame_control))
		return RX_CONTINUE;

	if (!rx->sta || skb->len - hdrlen < 12)
		return RX_DROP_UNUSABLE;

	/* it may be possible to optimize this a bit more */
	if (FUNC5(rx->skb))
		return RX_DROP_UNUSABLE;
	hdr = (void *)skb->data;

	/*
	 * Let TKIP code verify IV, but skip decryption.
	 * In the case where hardware checks the IV as well,
	 * we don't even get here, see ieee80211_rx_h_decrypt()
	 */
	if (status->flag & RX_FLAG_DECRYPTED)
		hwaccel = 1;

	res = FUNC3(rx->local->wep_rx_tfm,
					  key, skb->data + hdrlen,
					  skb->len - hdrlen, rx->sta->sta.addr,
					  hdr->addr1, hwaccel, rx->security_idx,
					  &rx->tkip_iv32,
					  &rx->tkip_iv16);
	if (res != TKIP_DECRYPT_OK)
		return RX_DROP_UNUSABLE;

	/* Trim ICV */
	FUNC7(skb, skb->len - TKIP_ICV_LEN);

	/* Remove IV */
	FUNC4(skb->data + TKIP_IV_LEN, skb->data, hdrlen);
	FUNC6(skb, TKIP_IV_LEN);

	return RX_CONTINUE;
}