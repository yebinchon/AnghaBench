#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct TYPE_2__ {void* cipher; void* seq_len; void* seq; void* key_len; void* key; } ;
struct key_parse {int def; int defmgmt; int def_uni; int def_multi; scalar_t__ type; TYPE_1__ p; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NL80211_KEY_CIPHER ; 
 size_t NL80211_KEY_DATA ; 
 size_t NL80211_KEY_DEFAULT ; 
 size_t NL80211_KEY_DEFAULT_MGMT ; 
 size_t NL80211_KEY_DEFAULT_TYPES ; 
 size_t NL80211_KEY_DEFAULT_TYPE_MULTICAST ; 
 size_t NL80211_KEY_DEFAULT_TYPE_UNICAST ; 
 size_t NL80211_KEY_IDX ; 
 int NL80211_KEY_MAX ; 
 size_t NL80211_KEY_SEQ ; 
 size_t NL80211_KEY_TYPE ; 
 scalar_t__ NUM_NL80211_KEYTYPES ; 
 int NUM_NL80211_KEY_DEFAULT_TYPES ; 
 int /*<<< orphan*/  nl80211_key_default_policy ; 
 int /*<<< orphan*/  nl80211_key_policy ; 
 void* FUNC0 (struct nlattr*) ; 
 void* FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 void* FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nlattr *key, struct key_parse *k)
{
	struct nlattr *tb[NL80211_KEY_MAX + 1];
	int err = FUNC4(tb, NL80211_KEY_MAX, key,
				   nl80211_key_policy);
	if (err)
		return err;

	k->def = !!tb[NL80211_KEY_DEFAULT];
	k->defmgmt = !!tb[NL80211_KEY_DEFAULT_MGMT];

	if (k->def) {
		k->def_uni = true;
		k->def_multi = true;
	}
	if (k->defmgmt)
		k->def_multi = true;

	if (tb[NL80211_KEY_IDX])
		k->idx = FUNC2(tb[NL80211_KEY_IDX]);

	if (tb[NL80211_KEY_DATA]) {
		k->p.key = FUNC0(tb[NL80211_KEY_DATA]);
		k->p.key_len = FUNC3(tb[NL80211_KEY_DATA]);
	}

	if (tb[NL80211_KEY_SEQ]) {
		k->p.seq = FUNC0(tb[NL80211_KEY_SEQ]);
		k->p.seq_len = FUNC3(tb[NL80211_KEY_SEQ]);
	}

	if (tb[NL80211_KEY_CIPHER])
		k->p.cipher = FUNC1(tb[NL80211_KEY_CIPHER]);

	if (tb[NL80211_KEY_TYPE]) {
		k->type = FUNC1(tb[NL80211_KEY_TYPE]);
		if (k->type < 0 || k->type >= NUM_NL80211_KEYTYPES)
			return -EINVAL;
	}

	if (tb[NL80211_KEY_DEFAULT_TYPES]) {
		struct nlattr *kdt[NUM_NL80211_KEY_DEFAULT_TYPES];
		err = FUNC4(kdt, NUM_NL80211_KEY_DEFAULT_TYPES - 1,
				       tb[NL80211_KEY_DEFAULT_TYPES],
				       nl80211_key_default_policy);
		if (err)
			return err;

		k->def_uni = kdt[NL80211_KEY_DEFAULT_TYPE_UNICAST];
		k->def_multi = kdt[NL80211_KEY_DEFAULT_TYPE_MULTICAST];
	}

	return 0;
}