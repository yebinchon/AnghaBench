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
struct sock {int dummy; } ;
struct rt6_info {int /*<<< orphan*/  rt6i_src; int /*<<< orphan*/  rt6i_dst; } ;
struct ipv6_pinfo {int /*<<< orphan*/  saddr_cache; int /*<<< orphan*/  daddr_cache; } ;
struct flowi {scalar_t__ oif; int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  fl6_dst; } ;
struct dst_entry {TYPE_2__* dev; TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ ifindex; } ;
struct TYPE_3__ {scalar_t__ family; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 struct ipv6_pinfo* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dst_entry *FUNC3(struct sock *sk,
					  struct dst_entry *dst,
					  struct flowi *fl)
{
	struct ipv6_pinfo *np = FUNC1(sk);
	struct rt6_info *rt;

	if (!dst)
		goto out;

	if (dst->ops->family != AF_INET6) {
		FUNC0(dst);
		return NULL;
	}

	rt = (struct rt6_info *)dst;
	/* Yes, checking route validity in not connected
	 * case is not very simple. Take into account,
	 * that we do not support routing by source, TOS,
	 * and MSG_DONTROUTE 		--ANK (980726)
	 *
	 * 1. ip6_rt_check(): If route was host route,
	 *    check that cached destination is current.
	 *    If it is network route, we still may
	 *    check its validity using saved pointer
	 *    to the last used address: daddr_cache.
	 *    We do not want to save whole address now,
	 *    (because main consumer of this service
	 *    is tcp, which has not this problem),
	 *    so that the last trick works only on connected
	 *    sockets.
	 * 2. oif also should be the same.
	 */
	if (FUNC2(&rt->rt6i_dst, &fl->fl6_dst, np->daddr_cache) ||
#ifdef CONFIG_IPV6_SUBTREES
	    ip6_rt_check(&rt->rt6i_src, &fl->fl6_src, np->saddr_cache) ||
#endif
	    (fl->oif && fl->oif != dst->dev->ifindex)) {
		FUNC0(dst);
		dst = NULL;
	}

out:
	return dst;
}