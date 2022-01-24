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
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nat_table; } ;
struct net {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int NF_ACCEPT ; 
 int FUNC1 (struct nf_conn*,unsigned int) ; 
 int FUNC2 (struct sk_buff*,unsigned int,struct net_device const*,struct net_device const*,int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*,int /*<<< orphan*/ ) ; 

int FUNC5(struct sk_buff *skb,
		     unsigned int hooknum,
		     const struct net_device *in,
		     const struct net_device *out,
		     struct nf_conn *ct)
{
	struct net *net = FUNC3(ct);
	int ret;

	ret = FUNC2(skb, hooknum, in, out, net->ipv4.nat_table);

	if (ret == NF_ACCEPT) {
		if (!FUNC4(ct, FUNC0(hooknum)))
			/* NUL mapping */
			ret = FUNC1(ct, hooknum);
	}
	return ret;
}