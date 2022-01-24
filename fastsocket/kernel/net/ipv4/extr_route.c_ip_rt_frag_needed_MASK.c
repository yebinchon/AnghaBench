#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int* metrics; int /*<<< orphan*/  dev; int /*<<< orphan*/  rt_next; } ;
struct TYPE_10__ {TYPE_5__ dst; } ;
struct TYPE_9__ {scalar_t__ fl4_dst; scalar_t__ fl4_src; int oif; scalar_t__ iif; } ;
struct rtable {scalar_t__ rt_dst; scalar_t__ rt_src; TYPE_2__ u; TYPE_1__ fl; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; int ihl; int /*<<< orphan*/  tot_len; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_12__ {scalar_t__ no_pmtu_disc; } ;
struct TYPE_11__ {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int RTAX_LOCK ; 
 int RTAX_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*,int) ; 
 unsigned short FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC5 (unsigned short) ; 
 unsigned short ip_rt_min_pmtu ; 
 int /*<<< orphan*/  ip_rt_mtu_expires ; 
 TYPE_4__ ipv4_config ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net*) ; 
 unsigned short FUNC7 (int /*<<< orphan*/ ) ; 
 struct rtable* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct net*) ; 
 unsigned int FUNC12 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* rt_hash_table ; 
 scalar_t__ FUNC13 (struct rtable*) ; 

unsigned short FUNC14(struct net *net, struct iphdr *iph,
				 unsigned short new_mtu,
				 struct net_device *dev)
{
	int i, k;
	unsigned short old_mtu = FUNC7(iph->tot_len);
	struct rtable *rth;
	int  ikeys[2] = { dev->ifindex, 0 };
	__be32  skeys[2] = { iph->saddr, 0, };
	__be32  daddr = iph->daddr;
	unsigned short est_mtu = 0;

	if (ipv4_config.no_pmtu_disc)
		return 0;

	for (k = 0; k < 2; k++) {
		for (i = 0; i < 2; i++) {
			unsigned hash = FUNC12(daddr, skeys[i], ikeys[k],
						FUNC11(net));

			FUNC9();
			for (rth = FUNC8(rt_hash_table[hash].chain); rth;
			     rth = FUNC8(rth->u.dst.rt_next)) {
				unsigned short mtu = new_mtu;

				if (rth->fl.fl4_dst != daddr ||
				    rth->fl.fl4_src != skeys[i] ||
				    rth->rt_dst != daddr ||
				    rth->rt_src != iph->saddr ||
				    rth->fl.oif != ikeys[k] ||
				    rth->fl.iif != 0 ||
				    FUNC2(&rth->u.dst, RTAX_MTU) ||
				    !FUNC6(FUNC0(rth->u.dst.dev), net) ||
				    FUNC13(rth))
					continue;

				if (new_mtu < 68 || new_mtu >= old_mtu) {

					/* BSD 4.2 compatibility hack :-( */
					if (mtu == 0 &&
					    old_mtu >= FUNC3(&rth->u.dst) &&
					    old_mtu >= 68 + (iph->ihl << 2))
						old_mtu -= iph->ihl << 2;

					mtu = FUNC5(old_mtu);
				}
				if (mtu <= FUNC3(&rth->u.dst)) {
					if (mtu < FUNC3(&rth->u.dst)) {
						FUNC1(&rth->u.dst);
						if (mtu < ip_rt_min_pmtu) {
							mtu = ip_rt_min_pmtu;
							rth->u.dst.metrics[RTAX_LOCK-1] |=
								(1 << RTAX_MTU);
						}
						rth->u.dst.metrics[RTAX_MTU-1] = mtu;
						FUNC4(&rth->u.dst,
							ip_rt_mtu_expires);
					}
					est_mtu = mtu;
				}
			}
			FUNC10();
		}
	}
	return est_mtu ? : new_mtu;
}