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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  frag; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
struct TYPE_5__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_6__ {int label; TYPE_1__ addr; } ;
struct sw_flow_key {TYPE_3__ ip; TYPE_2__ ipv6; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  nexthdr; } ;
typedef  int __be32 ;
typedef  int __be16 ;
struct TYPE_8__ {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPV6_FLOWINFO_FLOWLABEL ; 
 int /*<<< orphan*/  NEXTHDR_NONE ; 
 int /*<<< orphan*/  OVS_FRAG_TYPE_FIRST ; 
 int /*<<< orphan*/  OVS_FRAG_TYPE_LATER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 TYPE_4__ ipv6 ; 
 int /*<<< orphan*/  FUNC4 (struct ipv6hdr*) ; 
 struct ipv6hdr* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*,int,int /*<<< orphan*/ *,int*) ; 
 unsigned int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct sw_flow_key *key,
			 int *key_lenp)
{
	unsigned int nh_ofs = FUNC7(skb);
	unsigned int nh_len;
	int payload_ofs;
	struct ipv6hdr *nh;
	uint8_t nexthdr;
	__be16 frag_off;
	int err;

	*key_lenp = FUNC0(ipv6.label);

	err = FUNC1(skb, nh_ofs + sizeof(*nh));
	if (FUNC9(err))
		return err;

	nh = FUNC5(skb);
	nexthdr = nh->nexthdr;
	payload_ofs = (u8 *)(nh + 1) - skb->data;

	key->ip.proto = NEXTHDR_NONE;
	key->ip.tos = FUNC4(nh);
	key->ip.ttl = nh->hop_limit;
	key->ipv6.label = *(__be32 *)nh & FUNC2(IPV6_FLOWINFO_FLOWLABEL);
	key->ipv6.addr.src = nh->saddr;
	key->ipv6.addr.dst = nh->daddr;

	payload_ofs = FUNC6(skb, payload_ofs, &nexthdr, &frag_off);
	if (FUNC9(payload_ofs < 0))
		return -EINVAL;

	if (frag_off) {
		if (frag_off & FUNC3(~0x7))
			key->ip.frag = OVS_FRAG_TYPE_LATER;
		else
			key->ip.frag = OVS_FRAG_TYPE_FIRST;
	}

	nh_len = payload_ofs - nh_ofs;
	FUNC8(skb, nh_ofs + nh_len);
	key->ip.proto = nexthdr;
	return nh_len;
}