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
struct sk_buff {int dummy; } ;
struct ovs_key_ipv4 {scalar_t__ ipv4_src; scalar_t__ ipv4_dst; scalar_t__ ipv4_tos; scalar_t__ ipv4_ttl; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; scalar_t__ tos; scalar_t__ ttl; } ;

/* Variables and functions */
 struct iphdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct iphdr*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct iphdr*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct iphdr*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, const struct ovs_key_ipv4 *ipv4_key)
{
	struct iphdr *nh;
	int err;

	err = FUNC2(skb, FUNC5(skb) +
				 sizeof(struct iphdr));
	if (FUNC6(err))
		return err;

	nh = FUNC0(skb);

	if (ipv4_key->ipv4_src != nh->saddr)
		FUNC3(skb, nh, &nh->saddr, ipv4_key->ipv4_src);

	if (ipv4_key->ipv4_dst != nh->daddr)
		FUNC3(skb, nh, &nh->daddr, ipv4_key->ipv4_dst);

	if (ipv4_key->ipv4_tos != nh->tos)
		FUNC1(nh, 0, ipv4_key->ipv4_tos);

	if (ipv4_key->ipv4_ttl != nh->ttl)
		FUNC4(skb, nh, ipv4_key->ipv4_ttl);

	return 0;
}