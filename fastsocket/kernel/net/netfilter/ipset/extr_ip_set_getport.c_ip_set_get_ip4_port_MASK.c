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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct iphdr {int protocol; int /*<<< orphan*/  frag_off; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int IP_OFFSET ; 
 int FUNC0 (struct sk_buff const*,int,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iphdr* FUNC1 (struct sk_buff const*) ; 
 unsigned int FUNC2 (struct sk_buff const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

bool
FUNC4(const struct sk_buff *skb, bool src,
		    __be16 *port, u8 *proto)
{
	const struct iphdr *iph = FUNC1(skb);
	unsigned int protooff = FUNC2(skb);
	int protocol = iph->protocol;

	/* See comments at tcp_match in ip_tables.c */
	if (protocol <= 0 || (FUNC3(iph->frag_off) & IP_OFFSET))
		return false;

	return FUNC0(skb, protocol, protooff, src, port, proto);
}