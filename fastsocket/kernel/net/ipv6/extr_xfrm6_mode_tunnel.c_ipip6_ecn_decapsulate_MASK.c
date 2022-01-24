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
struct ipv6hdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipv6hdr*) ; 
 struct ipv6hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipv6hdr*) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC5(struct sk_buff *skb)
{
	struct ipv6hdr *outer_iph = FUNC4(skb);
	struct ipv6hdr *inner_iph = FUNC2(skb);

	if (FUNC0(FUNC3(outer_iph)))
		FUNC1(inner_iph);
}