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
struct rt0_hdr {struct in6_addr* addr; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {struct in6_addr daddr; } ;
struct ipv6_rt_hdr {int segments_left; int hdrlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*,struct in6_addr*,int) ; 

__attribute__((used)) static void FUNC2(struct ipv6hdr *iph, struct ipv6_rt_hdr *rthdr)
{
	int segments, segments_left;
	struct in6_addr *addrs;
	struct in6_addr final_addr;

	segments_left = rthdr->segments_left;
	if (segments_left == 0)
		return;
	rthdr->segments_left = 0;

	/* The value of rthdr->hdrlen has been verified either by the system
	 * call if it is locally generated, or by ipv6_rthdr_rcv() for incoming
	 * packets.  So we can assume that it is even and that segments is
	 * greater than or equal to segments_left.
	 *
	 * For the same reason we can assume that this option is of type 0.
	 */
	segments = rthdr->hdrlen >> 1;

	addrs = ((struct rt0_hdr *)rthdr)->addr;
	FUNC0(&final_addr, addrs + segments - 1);

	addrs += segments - segments_left;
	FUNC1(addrs + 1, addrs, (segments_left - 1) * sizeof(*addrs));

	FUNC0(addrs, &iph->daddr);
	FUNC0(&iph->daddr, &final_addr);
}