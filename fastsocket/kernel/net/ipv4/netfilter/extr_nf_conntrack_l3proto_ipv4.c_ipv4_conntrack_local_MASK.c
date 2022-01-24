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
struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 unsigned int NF_ACCEPT ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct net_device const*) ; 
 int FUNC1 (struct sk_buff*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC3(unsigned int hooknum,
					 struct sk_buff *skb,
					 const struct net_device *in,
					 const struct net_device *out,
					 int (*okfn)(struct sk_buff *))
{
	/* root is playing with raw sockets. */
	if (skb->len < sizeof(struct iphdr) ||
	    FUNC1(skb) < sizeof(struct iphdr))
		return NF_ACCEPT;
	return FUNC2(FUNC0(out), PF_INET, hooknum, skb);
}