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
typedef  int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_hdr_4addr {int dummy; } ;
struct ieee80211_ccmp_data {int* tx_b0; int* tx_b; int* tx_e; int* tx_s0; int key_idx; int /*<<< orphan*/  tfm; int /*<<< orphan*/ * tx_pn; } ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 scalar_t__ CCMP_HDR_LEN ; 
 int CCMP_MIC_LEN ; 
 int CCMP_PN_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ieee80211_hdr_4addr*,int /*<<< orphan*/ *,int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int* FUNC4 (struct sk_buff*,scalar_t__) ; 
 int* FUNC5 (struct sk_buff*,int) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, int hdr_len, void *priv)
{
	struct ieee80211_ccmp_data *key = priv;
	int data_len, i;
	u8 *pos;
	struct ieee80211_hdr_4addr *hdr;
	int blocks, last, len;
	u8 *mic;
	u8 *b0 = key->tx_b0;
	u8 *b = key->tx_b;
	u8 *e = key->tx_e;
	u8 *s0 = key->tx_s0;

	if (FUNC3(skb) < CCMP_HDR_LEN ||
	    FUNC6(skb) < CCMP_MIC_LEN ||
	    skb->len < hdr_len)
		return -1;

	data_len = skb->len - hdr_len;
	pos = FUNC4(skb, CCMP_HDR_LEN);
	FUNC2(pos, pos + CCMP_HDR_LEN, hdr_len);
	pos += hdr_len;
//	mic = skb_put(skb, CCMP_MIC_LEN);

	i = CCMP_PN_LEN - 1;
	while (i >= 0) {
		key->tx_pn[i]++;
		if (key->tx_pn[i] != 0)
			break;
		i--;
	}

	*pos++ = key->tx_pn[5];
	*pos++ = key->tx_pn[4];
	*pos++ = 0;
	*pos++ = (key->key_idx << 6) | (1 << 5) /* Ext IV included */;
	*pos++ = key->tx_pn[3];
	*pos++ = key->tx_pn[2];
	*pos++ = key->tx_pn[1];
	*pos++ = key->tx_pn[0];

	hdr = (struct ieee80211_hdr_4addr *)skb->data;
	//mic is moved to here by john
	mic = FUNC5(skb, CCMP_MIC_LEN);

	FUNC0(key->tfm, hdr, key->tx_pn, data_len, b0, b, s0);

	blocks = (data_len + AES_BLOCK_LEN - 1) / AES_BLOCK_LEN;
	last = data_len % AES_BLOCK_LEN;

	for (i = 1; i <= blocks; i++) {
		len = (i == blocks && last) ? last : AES_BLOCK_LEN;
		/* Authentication */
		FUNC7(b, pos, len);
		FUNC1(key->tfm, b, b);
		/* Encryption, with counter */
		b0[14] = (i >> 8) & 0xff;
		b0[15] = i & 0xff;
		FUNC1(key->tfm, b0, e);
		FUNC7(pos, e, len);
		pos += len;
	}

	for (i = 0; i < CCMP_MIC_LEN; i++)
		mic[i] = b[i] ^ s0[i];

	return 0;
}