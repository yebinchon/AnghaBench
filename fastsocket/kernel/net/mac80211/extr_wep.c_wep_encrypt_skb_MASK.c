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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_tx_data {TYPE_3__* key; int /*<<< orphan*/  local; } ;
struct ieee80211_key_conf {int flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  keyidx; int /*<<< orphan*/  keylen; int /*<<< orphan*/  key; } ;
struct TYPE_6__ {TYPE_2__ conf; } ;

/* Variables and functions */
 int IEEE80211_KEY_FLAG_GENERATE_IV ; 
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_tx_data *tx, struct sk_buff *skb)
{
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_key_conf *hw_key = info->control.hw_key;

	if (!hw_key) {
		if (FUNC2(tx->local, skb, tx->key->conf.key,
					  tx->key->conf.keylen,
					  tx->key->conf.keyidx))
			return -1;
	} else if ((hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_IV) ||
		   (hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE)) {
		if (!FUNC1(tx->local, skb,
					  tx->key->conf.keylen,
					  tx->key->conf.keyidx))
			return -1;
	}

	return 0;
}