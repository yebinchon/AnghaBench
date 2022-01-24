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
union nf_inet_addr {int /*<<< orphan*/  in6; int /*<<< orphan*/  ip; } ;
typedef  scalar_t__ u_int8_t ;
struct xt_recent_mtinfo {int invert; scalar_t__ side; int check_set; unsigned long seconds; unsigned int hit_count; int /*<<< orphan*/  name; } ;
struct xt_match_param {int* hotdrop; TYPE_1__* match; int /*<<< orphan*/ * out; struct xt_recent_mtinfo* matchinfo; } ;
struct sk_buff {int /*<<< orphan*/ * sk; } ;
struct recent_table {int dummy; } ;
struct recent_entry {unsigned int nstamps; scalar_t__ ttl; int /*<<< orphan*/ * stamps; } ;
struct ipv6hdr {scalar_t__ hop_limit; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct iphdr {scalar_t__ ttl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int XT_RECENT_CHECK ; 
 scalar_t__ XT_RECENT_DEST ; 
 int XT_RECENT_REMOVE ; 
 int XT_RECENT_SET ; 
 int XT_RECENT_TTL ; 
 int XT_RECENT_UPDATE ; 
 struct iphdr* FUNC0 (struct sk_buff const*) ; 
 struct ipv6hdr* FUNC1 (struct sk_buff const*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct recent_entry* FUNC3 (struct recent_table*,union nf_inet_addr*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct recent_entry* FUNC4 (struct recent_table*,union nf_inet_addr*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct recent_table*,struct recent_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct recent_table*,struct recent_entry*) ; 
 int /*<<< orphan*/  recent_lock ; 
 struct recent_table* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC11(const struct sk_buff *skb, const struct xt_match_param *par)
{
	const struct xt_recent_mtinfo *info = par->matchinfo;
	struct recent_table *t;
	struct recent_entry *e;
	union nf_inet_addr addr = {};
	u_int8_t ttl;
	bool ret = info->invert;

	if (par->match->family == NFPROTO_IPV4) {
		const struct iphdr *iph = FUNC0(skb);

		if (info->side == XT_RECENT_DEST)
			addr.ip = iph->daddr;
		else
			addr.ip = iph->saddr;

		ttl = iph->ttl;
	} else {
		const struct ipv6hdr *iph = FUNC1(skb);

		if (info->side == XT_RECENT_DEST)
			FUNC2(&addr.in6, &iph->daddr, sizeof(addr.in6));
		else
			FUNC2(&addr.in6, &iph->saddr, sizeof(addr.in6));

		ttl = iph->hop_limit;
	}

	/* use TTL as seen before forwarding */
	if (par->out != NULL && skb->sk == NULL)
		ttl++;

	FUNC8(&recent_lock);
	t = FUNC7(info->name);
	e = FUNC4(t, &addr, par->match->family,
				(info->check_set & XT_RECENT_TTL) ? ttl : 0);
	if (e == NULL) {
		if (!(info->check_set & XT_RECENT_SET))
			goto out;
		e = FUNC3(t, &addr, par->match->family, ttl);
		if (e == NULL)
			*par->hotdrop = true;
		ret = !ret;
		goto out;
	}

	if (info->check_set & XT_RECENT_SET)
		ret = !ret;
	else if (info->check_set & XT_RECENT_REMOVE) {
		FUNC5(t, e);
		ret = !ret;
	} else if (info->check_set & (XT_RECENT_CHECK | XT_RECENT_UPDATE)) {
		unsigned long time = jiffies - info->seconds * HZ;
		unsigned int i, hits = 0;

		for (i = 0; i < e->nstamps; i++) {
			if (info->seconds && FUNC10(time, e->stamps[i]))
				continue;
			if (!info->hit_count || ++hits >= info->hit_count) {
				ret = !ret;
				break;
			}
		}
	}

	if (info->check_set & XT_RECENT_SET ||
	    (info->check_set & XT_RECENT_UPDATE && ret)) {
		FUNC6(t, e);
		e->ttl = ttl;
	}
out:
	FUNC9(&recent_lock);
	return ret;
}