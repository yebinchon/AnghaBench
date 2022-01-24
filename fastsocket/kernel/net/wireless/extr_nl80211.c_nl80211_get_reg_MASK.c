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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_regdomain {unsigned int n_reg_rules; struct ieee80211_reg_rule* reg_rules; scalar_t__ dfs_region; int /*<<< orphan*/  alpha2; } ;
struct ieee80211_power_rule {int /*<<< orphan*/  max_eirp; int /*<<< orphan*/  max_antenna_gain; } ;
struct ieee80211_freq_range {int /*<<< orphan*/  max_bandwidth_khz; int /*<<< orphan*/  end_freq_khz; int /*<<< orphan*/  start_freq_khz; } ;
struct ieee80211_reg_rule {int /*<<< orphan*/  flags; struct ieee80211_power_rule power_rule; struct ieee80211_freq_range freq_range; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_ATTR_DFS_REGION ; 
 int /*<<< orphan*/  NL80211_ATTR_FREQ_RANGE_END ; 
 int /*<<< orphan*/  NL80211_ATTR_FREQ_RANGE_MAX_BW ; 
 int /*<<< orphan*/  NL80211_ATTR_FREQ_RANGE_START ; 
 int /*<<< orphan*/  NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN ; 
 int /*<<< orphan*/  NL80211_ATTR_POWER_RULE_MAX_EIRP ; 
 int /*<<< orphan*/  NL80211_ATTR_REG_ALPHA2 ; 
 unsigned int NL80211_ATTR_REG_RULES ; 
 int /*<<< orphan*/  NL80211_ATTR_REG_RULE_FLAGS ; 
 int /*<<< orphan*/  NL80211_ATTR_USER_REG_HINT_TYPE ; 
 int /*<<< orphan*/  NL80211_CMD_GET_REG ; 
 int /*<<< orphan*/  NL80211_USER_REG_HINT_CELL_BASE ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  cfg80211_mutex ; 
 int /*<<< orphan*/  cfg80211_regdomain ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_regdomain* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 () ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct genl_info *info)
{
	const struct ieee80211_regdomain *regdom;
	struct sk_buff *msg;
	void *hdr = NULL;
	struct nlattr *nl_reg_rules;
	unsigned int i;
	int err = -EINVAL;

	FUNC3(&cfg80211_mutex);

	if (!cfg80211_regdomain)
		goto out;

	msg = FUNC12(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		err = -ENOBUFS;
		goto out;
	}

	hdr = FUNC5(msg, info->snd_pid, info->snd_seq, 0,
			     NL80211_CMD_GET_REG);
	if (!hdr)
		goto put_failure;

	if (FUNC16() &&
	    FUNC9(msg, NL80211_ATTR_USER_REG_HINT_TYPE,
			NL80211_USER_REG_HINT_CELL_BASE))
		goto nla_put_failure;

	FUNC14();
	regdom = FUNC13(cfg80211_regdomain);

	if (FUNC8(msg, NL80211_ATTR_REG_ALPHA2, regdom->alpha2) ||
	    (regdom->dfs_region &&
	     FUNC10(msg, NL80211_ATTR_DFS_REGION, regdom->dfs_region)))
		goto nla_put_failure_rcu;

	nl_reg_rules = FUNC7(msg, NL80211_ATTR_REG_RULES);
	if (!nl_reg_rules)
		goto nla_put_failure_rcu;

	for (i = 0; i < regdom->n_reg_rules; i++) {
		struct nlattr *nl_reg_rule;
		const struct ieee80211_reg_rule *reg_rule;
		const struct ieee80211_freq_range *freq_range;
		const struct ieee80211_power_rule *power_rule;

		reg_rule = &regdom->reg_rules[i];
		freq_range = &reg_rule->freq_range;
		power_rule = &reg_rule->power_rule;

		nl_reg_rule = FUNC7(msg, i);
		if (!nl_reg_rule)
			goto nla_put_failure_rcu;

		if (FUNC9(msg, NL80211_ATTR_REG_RULE_FLAGS,
				reg_rule->flags) ||
		    FUNC9(msg, NL80211_ATTR_FREQ_RANGE_START,
				freq_range->start_freq_khz) ||
		    FUNC9(msg, NL80211_ATTR_FREQ_RANGE_END,
				freq_range->end_freq_khz) ||
		    FUNC9(msg, NL80211_ATTR_FREQ_RANGE_MAX_BW,
				freq_range->max_bandwidth_khz) ||
		    FUNC9(msg, NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN,
				power_rule->max_antenna_gain) ||
		    FUNC9(msg, NL80211_ATTR_POWER_RULE_MAX_EIRP,
				power_rule->max_eirp))
			goto nla_put_failure_rcu;

		FUNC6(msg, nl_reg_rule);
	}
	FUNC15();

	FUNC6(msg, nl_reg_rules);

	FUNC1(msg, hdr);
	err = FUNC2(msg, info);
	goto out;

nla_put_failure_rcu:
	FUNC15();
nla_put_failure:
	FUNC0(msg, hdr);
put_failure:
	FUNC11(msg);
	err = -EMSGSIZE;
out:
	FUNC4(&cfg80211_mutex);
	return err;
}