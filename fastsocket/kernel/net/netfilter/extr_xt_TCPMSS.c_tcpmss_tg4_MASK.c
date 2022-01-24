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
struct xt_target_param {int /*<<< orphan*/  targinfo; } ;
struct tcphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  tot_len; int /*<<< orphan*/  check; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  PF_INET ; 
 unsigned int XT_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC6(struct sk_buff *skb, const struct xt_target_param *par)
{
	struct iphdr *iph = FUNC2(skb);
	__be16 newlen;
	int ret;

	ret = FUNC4(skb, par->targinfo,
				   FUNC5(skb, PF_INET),
				   iph->ihl * 4,
				   sizeof(*iph) + sizeof(struct tcphdr));
	if (ret < 0)
		return NF_DROP;
	if (ret > 0) {
		iph = FUNC2(skb);
		newlen = FUNC1(FUNC3(iph->tot_len) + ret);
		FUNC0(&iph->check, iph->tot_len, newlen);
		iph->tot_len = newlen;
	}
	return XT_CONTINUE;
}