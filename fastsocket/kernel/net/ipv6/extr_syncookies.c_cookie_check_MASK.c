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
struct tcphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; int /*<<< orphan*/  seq; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  size_t __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  COUNTER_TRIES ; 
 int HZ ; 
 size_t NUM_MSS ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC1 (struct sk_buff*) ; 
 int jiffies ; 
 int* msstab ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 struct tcphdr* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC4(struct sk_buff *skb, __u32 cookie)
{
	struct ipv6hdr *iph = FUNC1(skb);
	const struct tcphdr *th = FUNC3(skb);
	__u32 seq = FUNC2(th->seq) - 1;
	__u32 mssind = FUNC0(cookie, &iph->saddr, &iph->daddr,
					    th->source, th->dest, seq,
					    jiffies / (HZ * 60), COUNTER_TRIES);

	return mssind < NUM_MSS ? msstab[mssind] + 1 : 0;
}