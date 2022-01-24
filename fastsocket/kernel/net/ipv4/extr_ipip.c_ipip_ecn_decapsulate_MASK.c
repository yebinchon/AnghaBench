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
struct iphdr {int /*<<< orphan*/  tos; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iphdr*) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC3(const struct iphdr *outer_iph,
					struct sk_buff *skb)
{
	struct iphdr *inner_iph = FUNC2(skb);

	if (FUNC0(outer_iph->tos))
		FUNC1(inner_iph);
}