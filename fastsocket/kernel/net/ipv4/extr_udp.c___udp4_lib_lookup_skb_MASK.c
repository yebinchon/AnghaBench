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
struct udp_table {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct sock* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udp_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 struct sock* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 

__attribute__((used)) static inline struct sock *FUNC7(struct sk_buff *skb,
						 __be16 sport, __be16 dport,
						 struct udp_table *udptable)
{
	struct sock *sk;
	const struct iphdr *iph = FUNC3(skb);

	if (FUNC6(sk = FUNC5(skb)))
		return sk;
	else
		return FUNC0(FUNC1(FUNC4(skb)->dev), iph->saddr, sport,
					 iph->daddr, dport, FUNC2(skb),
					 udptable);
}