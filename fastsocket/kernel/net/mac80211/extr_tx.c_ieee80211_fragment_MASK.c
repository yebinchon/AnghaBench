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
struct sk_buff {int len; scalar_t__ data; int /*<<< orphan*/  dev; int /*<<< orphan*/  priority; scalar_t__ cb; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_tx_data {int /*<<< orphan*/  skbs; struct ieee80211_local* local; } ;
struct ieee80211_local {scalar_t__ tx_headroom; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FCS_LEN ; 
 scalar_t__ IEEE80211_ENCRYPT_HEADROOM ; 
 scalar_t__ IEEE80211_ENCRYPT_TAILROOM ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_CLEAR_PS_FILT ; 
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ; 
 int IEEE80211_TX_CTL_MORE_FRAMES ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_tx_data *tx,
			      struct sk_buff *skb, int hdrlen,
			      int frag_threshold)
{
	struct ieee80211_local *local = tx->local;
	struct ieee80211_tx_info *info;
	struct sk_buff *tmp;
	int per_fragm = frag_threshold - hdrlen - FCS_LEN;
	int pos = hdrlen + per_fragm;
	int rem = skb->len - hdrlen - per_fragm;

	if (FUNC1(rem < 0))
		return -EINVAL;

	/* first fragment was already added to queue by caller */

	while (rem) {
		int fraglen = per_fragm;

		if (fraglen > rem)
			fraglen = rem;
		rem -= fraglen;
		tmp = FUNC3(local->tx_headroom +
				    frag_threshold +
				    IEEE80211_ENCRYPT_HEADROOM +
				    IEEE80211_ENCRYPT_TAILROOM);
		if (!tmp)
			return -ENOMEM;

		FUNC2(&tx->skbs, tmp);

		FUNC7(tmp, local->tx_headroom +
				 IEEE80211_ENCRYPT_HEADROOM);
		/* copy control information */
		FUNC4(tmp->cb, skb->cb, sizeof(tmp->cb));

		info = FUNC0(tmp);
		info->flags &= ~(IEEE80211_TX_CTL_CLEAR_PS_FILT |
				 IEEE80211_TX_CTL_FIRST_FRAGMENT);

		if (rem)
			info->flags |= IEEE80211_TX_CTL_MORE_FRAMES;

		FUNC5(tmp, skb);
		tmp->priority = skb->priority;
		tmp->dev = skb->dev;

		/* copy header and data */
		FUNC4(FUNC6(tmp, hdrlen), skb->data, hdrlen);
		FUNC4(FUNC6(tmp, fraglen), skb->data + pos, fraglen);

		pos += fraglen;
	}

	/* adjust first fragment's length */
	skb->len = hdrlen + per_fragm;
	return 0;
}