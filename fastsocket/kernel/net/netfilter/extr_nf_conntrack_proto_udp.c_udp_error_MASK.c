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
typedef  int /*<<< orphan*/  u_int8_t ;
struct udphdr {int /*<<< orphan*/  check; int /*<<< orphan*/  len; } ;
struct sk_buff {unsigned int len; } ;
struct TYPE_2__ {scalar_t__ sysctl_checksum; } ;
struct net {TYPE_1__ ct; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  _hdr ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int NF_ACCEPT ; 
 unsigned int NF_INET_PRE_ROUTING ; 
 scalar_t__ FUNC1 (struct sk_buff*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct udphdr* FUNC4 (struct sk_buff*,unsigned int,int,struct udphdr*) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct sk_buff *skb, unsigned int dataoff,
		     enum ip_conntrack_info *ctinfo,
		     u_int8_t pf,
		     unsigned int hooknum)
{
	unsigned int udplen = skb->len - dataoff;
	const struct udphdr *hdr;
	struct udphdr _hdr;

	/* Header is too small? */
	hdr = FUNC4(skb, dataoff, sizeof(_hdr), &_hdr);
	if (hdr == NULL) {
		if (FUNC0(net, IPPROTO_UDP))
			FUNC2(pf, 0, skb, NULL, NULL, NULL,
				      "nf_ct_udp: short packet ");
		return -NF_ACCEPT;
	}

	/* Truncated/malformed packets */
	if (FUNC3(hdr->len) > udplen || FUNC3(hdr->len) < sizeof(*hdr)) {
		if (FUNC0(net, IPPROTO_UDP))
			FUNC2(pf, 0, skb, NULL, NULL, NULL,
				"nf_ct_udp: truncated/malformed packet ");
		return -NF_ACCEPT;
	}

	/* Packet with no checksum */
	if (!hdr->check)
		return NF_ACCEPT;

	/* Checksum invalid? Ignore.
	 * We skip checking packets on the outgoing path
	 * because the checksum is assumed to be correct.
	 * FIXME: Source route IP option packets --RR */
	if (net->ct.sysctl_checksum && hooknum == NF_INET_PRE_ROUTING &&
	    FUNC1(skb, hooknum, dataoff, IPPROTO_UDP, pf)) {
		if (FUNC0(net, IPPROTO_UDP))
			FUNC2(pf, 0, skb, NULL, NULL, NULL,
				"nf_ct_udp: bad UDP checksum ");
		return -NF_ACCEPT;
	}

	return NF_ACCEPT;
}