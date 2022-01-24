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
typedef  void* u8 ;
struct lib80211_ccmp_data {int key_idx; int key_set; int /*<<< orphan*/  key; struct crypto_cipher* tfm; void** rx_pn; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int CCMP_TK_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_cipher*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lib80211_ccmp_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(void *key, int len, u8 * seq, void *priv)
{
	struct lib80211_ccmp_data *data = priv;
	int keyidx;
	struct crypto_cipher *tfm = data->tfm;

	keyidx = data->key_idx;
	FUNC2(data, 0, sizeof(*data));
	data->key_idx = keyidx;
	data->tfm = tfm;
	if (len == CCMP_TK_LEN) {
		FUNC1(data->key, key, CCMP_TK_LEN);
		data->key_set = 1;
		if (seq) {
			data->rx_pn[0] = seq[5];
			data->rx_pn[1] = seq[4];
			data->rx_pn[2] = seq[3];
			data->rx_pn[3] = seq[2];
			data->rx_pn[4] = seq[1];
			data->rx_pn[5] = seq[0];
		}
		FUNC0(data->tfm, data->key, CCMP_TK_LEN);
	} else if (len == 0)
		data->key_set = 0;
	else
		return -1;

	return 0;
}