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
struct tcphdr {int /*<<< orphan*/  seq; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  LINUX_MIB_SYNCOOKIESSENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int jiffies ; 
 scalar_t__ const* msstab ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct tcphdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__u32 FUNC7(struct sock *sk, struct sk_buff *skb, __u16 *mssp)
{
	const struct iphdr *iph = FUNC1(skb);
	const struct tcphdr *th = FUNC5(skb);
	int mssind;
	const __u16 mss = *mssp;

	FUNC6(sk);

	/* XXX sort msstab[] by probability?  Binary search? */
	for (mssind = 0; mss > msstab[mssind + 1]; mssind++)
		;
	*mssp = msstab[mssind] + 1;

	FUNC0(FUNC4(sk), LINUX_MIB_SYNCOOKIESSENT);

	return FUNC3(iph->saddr, iph->daddr,
				     th->source, th->dest, FUNC2(th->seq),
				     jiffies / (HZ * 60), mssind);
}