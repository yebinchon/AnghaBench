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
typedef  unsigned int u16 ;
struct xt_match_param {int /*<<< orphan*/  family; struct xt_conntrack_mtinfo2* matchinfo; } ;
struct xt_conntrack_mtinfo2 {int match_flags; int invert_flags; unsigned long expires_min; unsigned long expires_max; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {unsigned long expires; } ;
struct nf_conn {unsigned int status; TYPE_1__ timeout; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  IPS_DST_NAT_BIT ; 
 int /*<<< orphan*/  IPS_SRC_NAT_BIT ; 
 scalar_t__ IP_CT_DIR_ORIGINAL ; 
 int XT_CONNTRACK_DIRECTION ; 
 int XT_CONNTRACK_EXPIRES ; 
 int XT_CONNTRACK_ORIGDST ; 
 int XT_CONNTRACK_ORIGSRC ; 
 int XT_CONNTRACK_REPLDST ; 
 int XT_CONNTRACK_REPLSRC ; 
 int XT_CONNTRACK_STATE ; 
 unsigned int FUNC1 (int) ; 
 unsigned int XT_CONNTRACK_STATE_DNAT ; 
 unsigned int XT_CONNTRACK_STATE_INVALID ; 
 unsigned int XT_CONNTRACK_STATE_SNAT ; 
 unsigned int XT_CONNTRACK_STATE_UNTRACKED ; 
 int XT_CONNTRACK_STATUS ; 
 int FUNC2 (struct nf_conn const*,struct xt_conntrack_mtinfo2 const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nf_conn const*,struct xt_conntrack_mtinfo2 const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nf_conn const*,struct xt_conntrack_mtinfo2 const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nf_conn const*,struct xt_conntrack_mtinfo2 const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xt_conntrack_mtinfo2 const*,struct nf_conn const*) ; 
 unsigned long jiffies ; 
 struct nf_conn const nf_conntrack_untracked ; 
 struct nf_conn* FUNC7 (struct sk_buff const*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC10(const struct sk_buff *skb, const struct xt_match_param *par,
             u16 state_mask, u16 status_mask)
{
	const struct xt_conntrack_mtinfo2 *info = par->matchinfo;
	enum ip_conntrack_info ctinfo;
	const struct nf_conn *ct;
	unsigned int statebit;

	ct = FUNC7(skb, &ctinfo);

	if (ct == &nf_conntrack_untracked)
		statebit = XT_CONNTRACK_STATE_UNTRACKED;
	else if (ct != NULL)
		statebit = FUNC1(ctinfo);
	else
		statebit = XT_CONNTRACK_STATE_INVALID;

	if (info->match_flags & XT_CONNTRACK_STATE) {
		if (ct != NULL) {
			if (FUNC8(IPS_SRC_NAT_BIT, &ct->status))
				statebit |= XT_CONNTRACK_STATE_SNAT;
			if (FUNC8(IPS_DST_NAT_BIT, &ct->status))
				statebit |= XT_CONNTRACK_STATE_DNAT;
		}
		if (!!(state_mask & statebit) ^
		    !(info->invert_flags & XT_CONNTRACK_STATE))
			return false;
	}

	if (ct == NULL)
		return info->match_flags & XT_CONNTRACK_STATE;
	if ((info->match_flags & XT_CONNTRACK_DIRECTION) &&
	    (FUNC0(ctinfo) == IP_CT_DIR_ORIGINAL) ^
	    !!(info->invert_flags & XT_CONNTRACK_DIRECTION))
		return false;

	if (info->match_flags & XT_CONNTRACK_ORIGSRC)
		if (FUNC3(ct, info, par->family) ^
		    !(info->invert_flags & XT_CONNTRACK_ORIGSRC))
			return false;

	if (info->match_flags & XT_CONNTRACK_ORIGDST)
		if (FUNC2(ct, info, par->family) ^
		    !(info->invert_flags & XT_CONNTRACK_ORIGDST))
			return false;

	if (info->match_flags & XT_CONNTRACK_REPLSRC)
		if (FUNC5(ct, info, par->family) ^
		    !(info->invert_flags & XT_CONNTRACK_REPLSRC))
			return false;

	if (info->match_flags & XT_CONNTRACK_REPLDST)
		if (FUNC4(ct, info, par->family) ^
		    !(info->invert_flags & XT_CONNTRACK_REPLDST))
			return false;

	if (!FUNC6(info, ct))
		return false;

	if ((info->match_flags & XT_CONNTRACK_STATUS) &&
	    (!!(status_mask & ct->status) ^
	    !(info->invert_flags & XT_CONNTRACK_STATUS)))
		return false;

	if (info->match_flags & XT_CONNTRACK_EXPIRES) {
		unsigned long expires = 0;

		if (FUNC9(&ct->timeout))
			expires = (ct->timeout.expires - jiffies) / HZ;
		if ((expires >= info->expires_min &&
		    expires <= info->expires_max) ^
		    !(info->invert_flags & XT_CONNTRACK_EXPIRES))
			return false;
	}
	return true;
}