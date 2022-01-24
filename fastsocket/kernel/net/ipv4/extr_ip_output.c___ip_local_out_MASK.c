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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct iphdr {int /*<<< orphan*/  tot_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  dst_output ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct iphdr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 

int FUNC5(struct sk_buff *skb)
{
	struct iphdr *iph = FUNC1(skb);

	iph->tot_len = FUNC0(skb->len);
	FUNC2(iph);
	return FUNC3(PF_INET, NF_INET_LOCAL_OUT, skb, NULL, FUNC4(skb)->dev,
		       dst_output);
}