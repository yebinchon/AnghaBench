#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union nf_inet_addr {int /*<<< orphan*/  ip; int /*<<< orphan*/  ip6; } ;
struct xt_match_param {int* hotdrop; int /*<<< orphan*/  family; struct xt_connlimit_info* matchinfo; } ;
struct xt_connlimit_info {int limit; int inverse; TYPE_2__* data; int /*<<< orphan*/  mask; } ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; } ;
struct iphdr {int /*<<< orphan*/  saddr; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct nf_conntrack_tuple tuple; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFPROTO_IPV6 ; 
 int FUNC0 (TYPE_2__*,struct nf_conntrack_tuple const*,union nf_inet_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff const*) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct nf_conn* FUNC4 (struct sk_buff const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC9(const struct sk_buff *skb, const struct xt_match_param *par)
{
	const struct xt_connlimit_info *info = par->matchinfo;
	union nf_inet_addr addr;
	struct nf_conntrack_tuple tuple;
	const struct nf_conntrack_tuple *tuple_ptr = &tuple;
	enum ip_conntrack_info ctinfo;
	const struct nf_conn *ct;
	int connections;

	ct = FUNC4(skb, &ctinfo);
	if (ct != NULL)
		tuple_ptr = &ct->tuplehash[0].tuple;
	else if (!FUNC5(skb, FUNC6(skb),
				    par->family, &tuple))
		goto hotdrop;

	if (par->family == NFPROTO_IPV6) {
		const struct ipv6hdr *iph = FUNC2(skb);
		FUNC3(&addr.ip6, &iph->saddr, sizeof(iph->saddr));
	} else {
		const struct iphdr *iph = FUNC1(skb);
		addr.ip = iph->saddr;
	}

	FUNC7(&info->data->lock);
	connections = FUNC0(info->data, tuple_ptr, &addr,
	                         &info->mask, par->family);
	FUNC8(&info->data->lock);

	if (connections < 0) {
		/* kmalloc failed, drop it entirely */
		*par->hotdrop = true;
		return false;
	}

	return (connections > info->limit) ^ info->inverse;

 hotdrop:
	*par->hotdrop = true;
	return false;
}