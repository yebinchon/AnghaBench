#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {int /*<<< orphan*/ * hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_3__ control; } ;
struct ieee80211_tx_data {TYPE_5__* key; TYPE_2__* local; struct sk_buff* skb; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  ieee80211_tx_result ;
struct TYPE_9__ {scalar_t__ cipher; int flags; int /*<<< orphan*/ * key; } ;
struct TYPE_10__ {TYPE_4__ conf; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ set_frag_threshold; } ;

/* Variables and functions */
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_DONTFRAG ; 
 int IEEE80211_TX_INTFL_TKIP_MIC_FAILURE ; 
 int MICHAEL_MIC_LEN ; 
 size_t NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY ; 
 scalar_t__ TKIP_ICV_LEN ; 
 scalar_t__ TKIP_IV_LEN ; 
 int /*<<< orphan*/  TX_CONTINUE ; 
 int /*<<< orphan*/  TX_DROP ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ieee80211_hdr*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC6 (struct sk_buff*,int) ; 
 int FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

ieee80211_tx_result
FUNC9(struct ieee80211_tx_data *tx)
{
	u8 *data, *key, *mic;
	size_t data_len;
	unsigned int hdrlen;
	struct ieee80211_hdr *hdr;
	struct sk_buff *skb = tx->skb;
	struct ieee80211_tx_info *info = FUNC0(skb);
	int tail;

	hdr = (struct ieee80211_hdr *)skb->data;
	if (!tx->key || tx->key->conf.cipher != WLAN_CIPHER_SUITE_TKIP ||
	    skb->len < 24 || !FUNC3(hdr->frame_control))
		return TX_CONTINUE;

	hdrlen = FUNC2(hdr->frame_control);
	if (skb->len < hdrlen)
		return TX_DROP;

	data = skb->data + hdrlen;
	data_len = skb->len - hdrlen;

	if (FUNC8(info->flags & IEEE80211_TX_INTFL_TKIP_MIC_FAILURE)) {
		/* Need to use software crypto for the test */
		info->control.hw_key = NULL;
	}

	if (info->control.hw_key &&
	    (info->flags & IEEE80211_TX_CTL_DONTFRAG ||
	     tx->local->ops->set_frag_threshold) &&
	    !(tx->key->conf.flags & IEEE80211_KEY_FLAG_GENERATE_MMIC)) {
		/* hwaccel - with no need for SW-generated MMIC */
		return TX_CONTINUE;
	}

	tail = MICHAEL_MIC_LEN;
	if (!info->control.hw_key)
		tail += TKIP_ICV_LEN;

	if (FUNC1(FUNC7(skb) < tail ||
		    FUNC5(skb) < TKIP_IV_LEN))
		return TX_DROP;

	key = &tx->key->conf.key[NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY];
	mic = FUNC6(skb, MICHAEL_MIC_LEN);
	FUNC4(key, hdr, data, data_len, mic);
	if (FUNC8(info->flags & IEEE80211_TX_INTFL_TKIP_MIC_FAILURE))
		mic[0]++;

	return TX_CONTINUE;
}