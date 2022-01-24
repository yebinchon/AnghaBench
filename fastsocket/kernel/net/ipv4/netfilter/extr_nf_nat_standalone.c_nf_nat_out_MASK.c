#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; } ;
struct nf_conn {TYPE_8__* tuplehash; } ;
struct net_device {int dummy; } ;
struct iphdr {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
struct TYPE_13__ {scalar_t__ all; } ;
struct TYPE_10__ {scalar_t__ ip; } ;
struct TYPE_14__ {TYPE_5__ u; TYPE_2__ u3; } ;
struct TYPE_11__ {scalar_t__ all; } ;
struct TYPE_9__ {scalar_t__ ip; } ;
struct TYPE_12__ {TYPE_3__ u; TYPE_1__ u3; } ;
struct TYPE_15__ {TYPE_6__ dst; TYPE_4__ src; } ;
struct TYPE_16__ {TYPE_7__ tuple; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 unsigned int NF_STOLEN ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct nf_conn* FUNC3 (struct sk_buff*,int*) ; 
 unsigned int FUNC4 (unsigned int,struct sk_buff*,struct net_device const*,struct net_device const*,int (*) (struct sk_buff*)) ; 

__attribute__((used)) static unsigned int
FUNC5(unsigned int hooknum,
	   struct sk_buff *skb,
	   const struct net_device *in,
	   const struct net_device *out,
	   int (*okfn)(struct sk_buff *))
{
#ifdef CONFIG_XFRM
	const struct nf_conn *ct;
	enum ip_conntrack_info ctinfo;
#endif
	unsigned int ret;

	/* root is playing with raw sockets. */
	if (skb->len < sizeof(struct iphdr) ||
	    FUNC1(skb) < sizeof(struct iphdr))
		return NF_ACCEPT;

	ret = FUNC4(hooknum, skb, in, out, okfn);
#ifdef CONFIG_XFRM
	if (ret != NF_DROP && ret != NF_STOLEN &&
	    (ct = nf_ct_get(skb, &ctinfo)) != NULL) {
		enum ip_conntrack_dir dir = CTINFO2DIR(ctinfo);

		if (ct->tuplehash[dir].tuple.src.u3.ip !=
		    ct->tuplehash[!dir].tuple.dst.u3.ip
		    || ct->tuplehash[dir].tuple.src.u.all !=
		       ct->tuplehash[!dir].tuple.dst.u.all
		    )
			return ip_xfrm_me_harder(skb) == 0 ? ret : NF_DROP;
	}
#endif
	return ret;
}