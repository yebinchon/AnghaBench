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
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int /*<<< orphan*/  icmp6_type; } ;

/* Variables and functions */
 int IFA_F_OPTIMISTIC ; 
 int IFA_F_TENTATIVE ; 
 int /*<<< orphan*/  NDISC_NEIGHBOUR_SOLICITATION ; 
 int /*<<< orphan*/  ND_OPT_SOURCE_LL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct neighbour*,struct in6_addr const*,struct in6_addr const*,struct icmp6hdr*,struct in6_addr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr const*) ; 
 scalar_t__ FUNC2 (struct net_device*,struct in6_addr*,int) ; 

void FUNC3(struct net_device *dev, struct neighbour *neigh,
		   const struct in6_addr *solicit,
		   const struct in6_addr *daddr, const struct in6_addr *saddr)
{
	struct in6_addr addr_buf;
	struct icmp6hdr icmp6h = {
		.icmp6_type = NDISC_NEIGHBOUR_SOLICITATION,
	};

	if (saddr == NULL) {
		if (FUNC2(dev, &addr_buf,
				   (IFA_F_TENTATIVE|IFA_F_OPTIMISTIC)))
			return;
		saddr = &addr_buf;
	}

	FUNC0(dev, neigh, daddr, saddr,
		     &icmp6h, solicit,
		     !FUNC1(saddr) ? ND_OPT_SOURCE_LL_ADDR : 0);
}