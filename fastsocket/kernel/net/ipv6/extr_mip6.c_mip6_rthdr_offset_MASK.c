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
typedef  int u8 ;
typedef  int u16 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {unsigned int tail; unsigned int network_header; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_rt_hdr {int /*<<< orphan*/  type; } ;
struct ipv6_opt_hdr {int nexthdr; } ;
struct TYPE_2__ {int nexthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPV6_TLV_HAO ; 
#define  NEXTHDR_DEST 130 
#define  NEXTHDR_HOP 129 
#define  NEXTHDR_ROUTING 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct ipv6_opt_hdr*) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct xfrm_state *x, struct sk_buff *skb,
			     u8 **nexthdr)
{
	u16 offset = sizeof(struct ipv6hdr);
	struct ipv6_opt_hdr *exthdr =
				   (struct ipv6_opt_hdr *)(FUNC1(skb) + 1);
	const unsigned char *nh = FUNC3(skb);
	unsigned int packet_len = skb->tail - skb->network_header;
	int found_rhdr = 0;

	*nexthdr = &FUNC1(skb)->nexthdr;

	while (offset + 1 <= packet_len) {

		switch (**nexthdr) {
		case NEXTHDR_HOP:
			break;
		case NEXTHDR_ROUTING:
			if (offset + 3 <= packet_len) {
				struct ipv6_rt_hdr *rt;
				rt = (struct ipv6_rt_hdr *)(nh + offset);
				if (rt->type != 0)
					return offset;
			}
			found_rhdr = 1;
			break;
		case NEXTHDR_DEST:
			if (FUNC0(skb, offset, IPV6_TLV_HAO) >= 0)
				return offset;

			if (found_rhdr)
				return offset;

			break;
		default:
			return offset;
		}

		offset += FUNC2(exthdr);
		*nexthdr = &exthdr->nexthdr;
		exthdr = (struct ipv6_opt_hdr *)(nh + offset);
	}

	return offset;
}