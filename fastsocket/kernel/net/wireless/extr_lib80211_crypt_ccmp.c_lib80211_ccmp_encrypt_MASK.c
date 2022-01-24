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
struct sk_buff {int len; int* data; } ;
struct lib80211_ccmp_data {int* tx_b0; int* tx_b; int* tx_e; int* tx_s0; int /*<<< orphan*/  tfm; int /*<<< orphan*/  tx_pn; } ;
struct ieee80211_hdr {int dummy; } ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 int CCMP_HDR_LEN ; 
 int CCMP_MIC_LEN ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_hdr*,int /*<<< orphan*/ ,int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC3 (struct sk_buff*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int* FUNC4 (struct sk_buff*,int) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, int hdr_len, void *priv)
{
	struct lib80211_ccmp_data *key = priv;
	int data_len, i, blocks, last, len;
	u8 *pos, *mic;
	struct ieee80211_hdr *hdr;
	u8 *b0 = key->tx_b0;
	u8 *b = key->tx_b;
	u8 *e = key->tx_e;
	u8 *s0 = key->tx_s0;

	if (FUNC5(skb) < CCMP_MIC_LEN || skb->len < hdr_len)
		return -1;

	data_len = skb->len - hdr_len;
	len = FUNC3(skb, hdr_len, NULL, 0, priv);
	if (len < 0)
		return -1;

	pos = skb->data + hdr_len + CCMP_HDR_LEN;
	hdr = (struct ieee80211_hdr *)skb->data;
	FUNC1(key->tfm, hdr, key->tx_pn, data_len, b0, b, s0);

	blocks = FUNC0(data_len, AES_BLOCK_LEN);
	last = data_len % AES_BLOCK_LEN;

	for (i = 1; i <= blocks; i++) {
		len = (i == blocks && last) ? last : AES_BLOCK_LEN;
		/* Authentication */
		FUNC6(b, pos, len);
		FUNC2(key->tfm, b, b);
		/* Encryption, with counter */
		b0[14] = (i >> 8) & 0xff;
		b0[15] = i & 0xff;
		FUNC2(key->tfm, b0, e);
		FUNC6(pos, e, len);
		pos += len;
	}

	mic = FUNC4(skb, CCMP_MIC_LEN);
	for (i = 0; i < CCMP_MIC_LEN; i++)
		mic[i] = b[i] ^ s0[i];

	return 0;
}