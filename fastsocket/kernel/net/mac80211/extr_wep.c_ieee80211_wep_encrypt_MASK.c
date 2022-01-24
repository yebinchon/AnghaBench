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
typedef  int /*<<< orphan*/  const u8 ;
struct sk_buff {int len; int /*<<< orphan*/  const* data; } ;
struct ieee80211_local {int /*<<< orphan*/  wep_tx_tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  WEP_ICV_LEN ; 
 int WEP_IV_LEN ; 
 int /*<<< orphan*/  WLAN_KEY_LEN_WEP104 ; 
 int /*<<< orphan*/  const* FUNC0 (struct ieee80211_local*,struct sk_buff*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC4(struct ieee80211_local *local,
			  struct sk_buff *skb,
			  const u8 *key, int keylen, int keyidx)
{
	u8 *iv;
	size_t len;
	u8 rc4key[3 + WLAN_KEY_LEN_WEP104];

	iv = FUNC0(local, skb, keylen, keyidx);
	if (!iv)
		return -1;

	len = skb->len - (iv + WEP_IV_LEN - skb->data);

	/* Prepend 24-bit IV to RC4 key */
	FUNC2(rc4key, iv, 3);

	/* Copy rest of the WEP key (the secret part) */
	FUNC2(rc4key + 3, key, keylen);

	/* Add room for ICV */
	FUNC3(skb, WEP_ICV_LEN);

	return FUNC1(local->wep_tx_tfm, rc4key, keylen + 3,
					  iv + WEP_IV_LEN, len);
}