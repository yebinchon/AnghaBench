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
typedef  void* u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
typedef  void* s32 ;

/* Variables and functions */
 int EINVAL ; 
 size_t NL80211_ATTR_CQM ; 
 int /*<<< orphan*/  NL80211_ATTR_CQM_MAX ; 
 size_t NL80211_ATTR_CQM_RSSI_HYST ; 
 size_t NL80211_ATTR_CQM_RSSI_THOLD ; 
 size_t NL80211_ATTR_CQM_TXE_INTVL ; 
 size_t NL80211_ATTR_CQM_TXE_PKTS ; 
 size_t NL80211_ATTR_CQM_TXE_RATE ; 
 int /*<<< orphan*/  nl80211_attr_cqm_policy ; 
 int FUNC0 (struct genl_info*,void*,void*) ; 
 int FUNC1 (struct genl_info*,void*,void*,void*) ; 
 void* FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr *attrs[NL80211_ATTR_CQM_MAX + 1];
	struct nlattr *cqm;
	int err;

	cqm = info->attrs[NL80211_ATTR_CQM];
	if (!cqm) {
		err = -EINVAL;
		goto out;
	}

	err = FUNC3(attrs, NL80211_ATTR_CQM_MAX, cqm,
			       nl80211_attr_cqm_policy);
	if (err)
		goto out;

	if (attrs[NL80211_ATTR_CQM_RSSI_THOLD] &&
	    attrs[NL80211_ATTR_CQM_RSSI_HYST]) {
		s32 threshold;
		u32 hysteresis;
		threshold = FUNC2(attrs[NL80211_ATTR_CQM_RSSI_THOLD]);
		hysteresis = FUNC2(attrs[NL80211_ATTR_CQM_RSSI_HYST]);
		err = FUNC0(info, threshold, hysteresis);
	} else if (attrs[NL80211_ATTR_CQM_TXE_RATE] &&
		   attrs[NL80211_ATTR_CQM_TXE_PKTS] &&
		   attrs[NL80211_ATTR_CQM_TXE_INTVL]) {
		u32 rate, pkts, intvl;
		rate = FUNC2(attrs[NL80211_ATTR_CQM_TXE_RATE]);
		pkts = FUNC2(attrs[NL80211_ATTR_CQM_TXE_PKTS]);
		intvl = FUNC2(attrs[NL80211_ATTR_CQM_TXE_INTVL]);
		err = FUNC1(info, rate, pkts, intvl);
	} else
		err = -EINVAL;

out:
	return err;
}