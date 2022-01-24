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
struct wiphy {int n_iface_combinations; struct ieee80211_iface_combination* iface_combinations; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_iface_combination {int n_limits; int /*<<< orphan*/  radar_detect_widths; int /*<<< orphan*/  max_interfaces; int /*<<< orphan*/  num_different_channels; scalar_t__ beacon_int_infra_match; TYPE_1__* limits; } ;
struct TYPE_2__ {int /*<<< orphan*/  types; int /*<<< orphan*/  max; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int NL80211_ATTR_INTERFACE_COMBINATIONS ; 
 int NL80211_IFACE_COMB_LIMITS ; 
 int /*<<< orphan*/  NL80211_IFACE_COMB_MAXNUM ; 
 int /*<<< orphan*/  NL80211_IFACE_COMB_NUM_CHANNELS ; 
 int /*<<< orphan*/  NL80211_IFACE_COMB_RADAR_DETECT_WIDTHS ; 
 int /*<<< orphan*/  NL80211_IFACE_COMB_STA_AP_BI_MATCH ; 
 int /*<<< orphan*/  NL80211_IFACE_LIMIT_MAX ; 
 int /*<<< orphan*/  NL80211_IFACE_LIMIT_TYPES ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy,
					  struct sk_buff *msg,
					  bool large)
{
	struct nlattr *nl_combis;
	int i, j;

	nl_combis = FUNC2(msg,
				NL80211_ATTR_INTERFACE_COMBINATIONS);
	if (!nl_combis)
		goto nla_put_failure;

	for (i = 0; i < wiphy->n_iface_combinations; i++) {
		const struct ieee80211_iface_combination *c;
		struct nlattr *nl_combi, *nl_limits;

		c = &wiphy->iface_combinations[i];

		nl_combi = FUNC2(msg, i + 1);
		if (!nl_combi)
			goto nla_put_failure;

		nl_limits = FUNC2(msg, NL80211_IFACE_COMB_LIMITS);
		if (!nl_limits)
			goto nla_put_failure;

		for (j = 0; j < c->n_limits; j++) {
			struct nlattr *nl_limit;

			nl_limit = FUNC2(msg, j + 1);
			if (!nl_limit)
				goto nla_put_failure;
			if (FUNC4(msg, NL80211_IFACE_LIMIT_MAX,
					c->limits[j].max))
				goto nla_put_failure;
			if (FUNC0(msg, NL80211_IFACE_LIMIT_TYPES,
						c->limits[j].types))
				goto nla_put_failure;
			FUNC1(msg, nl_limit);
		}

		FUNC1(msg, nl_limits);

		if (c->beacon_int_infra_match &&
		    FUNC3(msg, NL80211_IFACE_COMB_STA_AP_BI_MATCH))
			goto nla_put_failure;
		if (FUNC4(msg, NL80211_IFACE_COMB_NUM_CHANNELS,
				c->num_different_channels) ||
		    FUNC4(msg, NL80211_IFACE_COMB_MAXNUM,
				c->max_interfaces))
			goto nla_put_failure;
		if (large &&
		    FUNC4(msg, NL80211_IFACE_COMB_RADAR_DETECT_WIDTHS,
				c->radar_detect_widths))
			goto nla_put_failure;

		FUNC1(msg, nl_combi);
	}

	FUNC1(msg, nl_combis);

	return 0;
nla_put_failure:
	return -ENOBUFS;
}