#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ieee80211_mmie {int dummy; } ;
struct TYPE_12__ {int cipher; int keyidx; size_t keylen; int icv_len; int /*<<< orphan*/  key; int /*<<< orphan*/  iv_len; scalar_t__ flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  tfm; int /*<<< orphan*/ * rx_pn; } ;
struct TYPE_9__ {int /*<<< orphan*/  tfm; int /*<<< orphan*/ ** rx_pn; } ;
struct TYPE_8__ {int /*<<< orphan*/  txlock; TYPE_1__* rx; } ;
struct TYPE_11__ {TYPE_4__ aes_cmac; TYPE_3__ ccmp; TYPE_2__ tkip; } ;
struct ieee80211_key {int /*<<< orphan*/  list; TYPE_6__ conf; TYPE_5__ u; scalar_t__ flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  iv16; int /*<<< orphan*/  iv32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CCMP_HDR_LEN ; 
 int CCMP_MIC_LEN ; 
 int CCMP_PN_LEN ; 
 int CMAC_PN_LEN ; 
 int ENOMEM ; 
 struct ieee80211_key* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_NUM_TIDS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int NUM_DEFAULT_KEYS ; 
 int NUM_DEFAULT_MGMT_KEYS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int TKIP_ICV_LEN ; 
 int /*<<< orphan*/  TKIP_IV_LEN ; 
 int WEP_ICV_LEN ; 
 int /*<<< orphan*/  WEP_IV_LEN ; 
#define  WLAN_CIPHER_SUITE_AES_CMAC 132 
#define  WLAN_CIPHER_SUITE_CCMP 131 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_key*) ; 
 struct ieee80211_key* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct ieee80211_key *FUNC13(u32 cipher, int idx, size_t key_len,
					  const u8 *key_data,
					  size_t seq_len, const u8 *seq)
{
	struct ieee80211_key *key;
	int i, j, err;

	FUNC0(idx < 0 || idx >= NUM_DEFAULT_KEYS + NUM_DEFAULT_MGMT_KEYS);

	key = FUNC10(sizeof(struct ieee80211_key) + key_len, GFP_KERNEL);
	if (!key)
		return FUNC1(-ENOMEM);

	/*
	 * Default to software encryption; we'll later upload the
	 * key to the hardware if possible.
	 */
	key->conf.flags = 0;
	key->flags = 0;

	key->conf.cipher = cipher;
	key->conf.keyidx = idx;
	key->conf.keylen = key_len;
	switch (cipher) {
	case WLAN_CIPHER_SUITE_WEP40:
	case WLAN_CIPHER_SUITE_WEP104:
		key->conf.iv_len = WEP_IV_LEN;
		key->conf.icv_len = WEP_ICV_LEN;
		break;
	case WLAN_CIPHER_SUITE_TKIP:
		key->conf.iv_len = TKIP_IV_LEN;
		key->conf.icv_len = TKIP_ICV_LEN;
		if (seq) {
			for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
				key->u.tkip.rx[i].iv32 =
					FUNC6(&seq[2]);
				key->u.tkip.rx[i].iv16 =
					FUNC5(seq);
			}
		}
		FUNC12(&key->u.tkip.txlock);
		break;
	case WLAN_CIPHER_SUITE_CCMP:
		key->conf.iv_len = CCMP_HDR_LEN;
		key->conf.icv_len = CCMP_MIC_LEN;
		if (seq) {
			for (i = 0; i < IEEE80211_NUM_TIDS + 1; i++)
				for (j = 0; j < CCMP_PN_LEN; j++)
					key->u.ccmp.rx_pn[i][j] =
						seq[CCMP_PN_LEN - j - 1];
		}
		/*
		 * Initialize AES key state here as an optimization so that
		 * it does not need to be initialized for every packet.
		 */
		key->u.ccmp.tfm = FUNC8(key_data);
		if (FUNC3(key->u.ccmp.tfm)) {
			err = FUNC4(key->u.ccmp.tfm);
			FUNC9(key);
			return FUNC1(err);
		}
		break;
	case WLAN_CIPHER_SUITE_AES_CMAC:
		key->conf.iv_len = 0;
		key->conf.icv_len = sizeof(struct ieee80211_mmie);
		if (seq)
			for (j = 0; j < CMAC_PN_LEN; j++)
				key->u.aes_cmac.rx_pn[j] =
					seq[CMAC_PN_LEN - j - 1];
		/*
		 * Initialize AES key state here as an optimization so that
		 * it does not need to be initialized for every packet.
		 */
		key->u.aes_cmac.tfm =
			FUNC7(key_data);
		if (FUNC3(key->u.aes_cmac.tfm)) {
			err = FUNC4(key->u.aes_cmac.tfm);
			FUNC9(key);
			return FUNC1(err);
		}
		break;
	}
	FUNC11(key->conf.key, key_data, key_len);
	FUNC2(&key->list);

	return key;
}