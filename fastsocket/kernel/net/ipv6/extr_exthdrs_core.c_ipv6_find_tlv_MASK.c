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
struct sk_buff {int tail; int network_header; } ;
struct ipv6_opt_hdr {int hdrlen; } ;

/* Variables and functions */
#define  IPV6_TLV_PAD0 128 
 unsigned char* FUNC0 (struct sk_buff*) ; 

int FUNC1(struct sk_buff *skb, int offset, int type)
{
	const unsigned char *nh = FUNC0(skb);
	int packet_len = skb->tail - skb->network_header;
	struct ipv6_opt_hdr *hdr;
	int len;

	if (offset + 2 > packet_len)
		goto bad;
	hdr = (struct ipv6_opt_hdr *)(nh + offset);
	len = ((hdr->hdrlen + 1) << 3);

	if (offset + len > packet_len)
		goto bad;

	offset += 2;
	len -= 2;

	while (len > 0) {
		int opttype = nh[offset];
		int optlen;

		if (opttype == type)
			return offset;

		switch (opttype) {
		case IPV6_TLV_PAD0:
			optlen = 1;
			break;
		default:
			optlen = nh[offset + 1] + 2;
			if (optlen > len)
				goto bad;
			break;
		}
		offset += optlen;
		len -= optlen;
	}
	/* not_found */
 bad:
	return -1;
}