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
struct ieee80211_local {void* wep_rx_tfm; void* wep_tx_tfm; int /*<<< orphan*/  wep_iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  WEP_IV_LEN ; 
 void* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct ieee80211_local *local)
{
	/* start WEP IV from a random value */
	FUNC5(&local->wep_iv, WEP_IV_LEN);

	local->wep_tx_tfm = FUNC3("arc4", 0, CRYPTO_ALG_ASYNC);
	if (FUNC1(local->wep_tx_tfm)) {
		local->wep_rx_tfm = FUNC0(-EINVAL);
		return FUNC2(local->wep_tx_tfm);
	}

	local->wep_rx_tfm = FUNC3("arc4", 0, CRYPTO_ALG_ASYNC);
	if (FUNC1(local->wep_rx_tfm)) {
		FUNC4(local->wep_tx_tfm);
		local->wep_tx_tfm = FUNC0(-EINVAL);
		return FUNC2(local->wep_rx_tfm);
	}

	return 0;
}