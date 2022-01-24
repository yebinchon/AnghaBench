#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  a6; } ;
struct TYPE_4__ {int /*<<< orphan*/  a6; } ;
struct TYPE_6__ {TYPE_2__ saddr; TYPE_1__ daddr; } ;
struct xfrm_state {TYPE_3__ sel; } ;
struct sk_buff {int mac_len; scalar_t__ len; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  payload_len; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char const*,int) ; 
 int FUNC5 (struct sk_buff*,int) ; 
 unsigned char* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct xfrm_state *x, struct sk_buff *skb)
{
	struct ipv6hdr *ip6h;
	const unsigned char *old_mac;
	int size = sizeof(struct ipv6hdr);
	int err;

	err = FUNC5(skb, size + skb->mac_len);
	if (err)
		goto out;

	FUNC0(skb, size);
	FUNC7(skb);

	old_mac = FUNC6(skb);
	FUNC8(skb, -skb->mac_len);
	FUNC4(FUNC6(skb), old_mac, skb->mac_len);

	FUNC9(skb);

	ip6h = FUNC3(skb);
	ip6h->payload_len = FUNC1(skb->len - size);
	FUNC2(&ip6h->daddr, (struct in6_addr *) &x->sel.daddr.a6);
	FUNC2(&ip6h->saddr, (struct in6_addr *) &x->sel.saddr.a6);
	err = 0;
out:
	return err;
}