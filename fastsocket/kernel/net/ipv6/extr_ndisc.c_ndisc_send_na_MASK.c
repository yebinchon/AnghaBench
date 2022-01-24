#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct inet6_ifaddr {int flags; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int icmp6_router; int icmp6_solicited; int icmp6_override; int /*<<< orphan*/  icmp6_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  srcprefs; } ;
struct TYPE_6__ {int /*<<< orphan*/  ndisc_sk; } ;
struct TYPE_7__ {TYPE_1__ ipv6; } ;

/* Variables and functions */
 int IFA_F_OPTIMISTIC ; 
 int /*<<< orphan*/  NDISC_NEIGHBOUR_ADVERTISEMENT ; 
 int /*<<< orphan*/  ND_OPT_TARGET_LL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct neighbour*,struct in6_addr const*,struct in6_addr const*,struct icmp6hdr*,struct in6_addr const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_ifaddr*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,struct net_device*,struct in6_addr const*,int /*<<< orphan*/ ,struct in6_addr*) ; 
 struct inet6_ifaddr* FUNC5 (TYPE_2__*,struct in6_addr const*,struct net_device*,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, struct neighbour *neigh,
			  const struct in6_addr *daddr,
			  const struct in6_addr *solicited_addr,
			  int router, int solicited, int override, int inc_opt)
{
	struct in6_addr tmpaddr;
	struct inet6_ifaddr *ifp;
	const struct in6_addr *src_addr;
	struct icmp6hdr icmp6h = {
		.icmp6_type = NDISC_NEIGHBOUR_ADVERTISEMENT,
	};

	/* for anycast or proxy, solicited_addr != src_addr */
	ifp = FUNC5(FUNC1(dev), solicited_addr, dev, 1);
	if (ifp) {
		src_addr = solicited_addr;
		if (ifp->flags & IFA_F_OPTIMISTIC)
			override = 0;
		FUNC2(ifp);
	} else {
		if (FUNC4(FUNC1(dev), dev, daddr,
				       FUNC3(FUNC1(dev)->ipv6.ndisc_sk)->srcprefs,
				       &tmpaddr))
			return;
		src_addr = &tmpaddr;
	}

	icmp6h.icmp6_router = router;
	icmp6h.icmp6_solicited = solicited;
	icmp6h.icmp6_override = override;

	FUNC0(dev, neigh, daddr, src_addr,
		     &icmp6h, solicited_addr,
		     inc_opt ? ND_OPT_TARGET_LL_ADDR : 0);
}