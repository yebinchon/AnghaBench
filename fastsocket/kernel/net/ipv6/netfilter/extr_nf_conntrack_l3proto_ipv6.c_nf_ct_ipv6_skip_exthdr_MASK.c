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
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct ipv6_opt_hdr {int hdrlen; scalar_t__ nexthdr; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ NEXTHDR_AUTH ; 
 scalar_t__ NEXTHDR_FRAGMENT ; 
 scalar_t__ NEXTHDR_NONE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (struct ipv6_opt_hdr*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*,int,struct ipv6_opt_hdr*,int) ; 

__attribute__((used)) static int FUNC4(const struct sk_buff *skb, int start,
				  u8 *nexthdrp, int len)
{
	u8 nexthdr = *nexthdrp;

	while (FUNC1(nexthdr)) {
		struct ipv6_opt_hdr hdr;
		int hdrlen;

		if (len < (int)sizeof(struct ipv6_opt_hdr))
			return -1;
		if (nexthdr == NEXTHDR_NONE)
			break;
		if (nexthdr == NEXTHDR_FRAGMENT)
			break;
		if (FUNC3(skb, start, &hdr, sizeof(hdr)))
			FUNC0();
		if (nexthdr == NEXTHDR_AUTH)
			hdrlen = (hdr.hdrlen+2)<<2;
		else
			hdrlen = FUNC2(&hdr);

		nexthdr = hdr.nexthdr;
		len -= hdrlen;
		start += hdrlen;
	}

	*nexthdrp = nexthdr;
	return start;
}