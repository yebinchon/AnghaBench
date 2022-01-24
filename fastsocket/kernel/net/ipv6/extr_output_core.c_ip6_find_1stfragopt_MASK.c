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
struct sk_buff {unsigned int tail; unsigned int network_header; } ;
struct ipv6hdr {int dummy; } ;
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
 scalar_t__ FUNC3 (struct sk_buff*) ; 

int FUNC4(struct sk_buff *skb, u8 **nexthdr)
{
	u16 offset = sizeof(struct ipv6hdr);
	struct ipv6_opt_hdr *exthdr =
				(struct ipv6_opt_hdr *)(FUNC1(skb) + 1);
	unsigned int packet_len = skb->tail - skb->network_header;
	int found_rhdr = 0;
	*nexthdr = &FUNC1(skb)->nexthdr;

	while (offset + 1 <= packet_len) {

		switch (**nexthdr) {

		case NEXTHDR_HOP:
			break;
		case NEXTHDR_ROUTING:
			found_rhdr = 1;
			break;
		case NEXTHDR_DEST:
#if defined(CONFIG_IPV6_MIP6) || defined(CONFIG_IPV6_MIP6_MODULE)
			if (ipv6_find_tlv(skb, offset, IPV6_TLV_HAO) >= 0)
				break;
#endif
			if (found_rhdr)
				return offset;
			break;
		default :
			return offset;
		}

		offset += FUNC2(exthdr);
		*nexthdr = &exthdr->nexthdr;
		exthdr = (struct ipv6_opt_hdr *)(FUNC3(skb) +
						 offset);
	}

	return offset;
}