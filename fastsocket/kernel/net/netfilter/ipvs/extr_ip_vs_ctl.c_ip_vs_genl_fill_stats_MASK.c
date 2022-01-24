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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  outbps; int /*<<< orphan*/  inbps; int /*<<< orphan*/  outpps; int /*<<< orphan*/  inpps; int /*<<< orphan*/  cps; int /*<<< orphan*/  outbytes; int /*<<< orphan*/  inbytes; int /*<<< orphan*/  outpkts; int /*<<< orphan*/  inpkts; int /*<<< orphan*/  conns; } ;
struct ip_vs_stats {int /*<<< orphan*/  lock; TYPE_1__ ustats; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_CONNS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_CPS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_INBPS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_INBYTES ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_INPKTS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_INPPS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_OUTBPS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_OUTBYTES ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_OUTPKTS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_OUTPPS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, int container_type,
				 struct ip_vs_stats *stats)
{
	struct nlattr *nl_stats = FUNC4(skb, container_type);
	if (!nl_stats)
		return -EMSGSIZE;

	FUNC5(&stats->lock);

	FUNC0(skb, IPVS_STATS_ATTR_CONNS, stats->ustats.conns);
	FUNC0(skb, IPVS_STATS_ATTR_INPKTS, stats->ustats.inpkts);
	FUNC0(skb, IPVS_STATS_ATTR_OUTPKTS, stats->ustats.outpkts);
	FUNC1(skb, IPVS_STATS_ATTR_INBYTES, stats->ustats.inbytes);
	FUNC1(skb, IPVS_STATS_ATTR_OUTBYTES, stats->ustats.outbytes);
	FUNC0(skb, IPVS_STATS_ATTR_CPS, stats->ustats.cps);
	FUNC0(skb, IPVS_STATS_ATTR_INPPS, stats->ustats.inpps);
	FUNC0(skb, IPVS_STATS_ATTR_OUTPPS, stats->ustats.outpps);
	FUNC0(skb, IPVS_STATS_ATTR_INBPS, stats->ustats.inbps);
	FUNC0(skb, IPVS_STATS_ATTR_OUTBPS, stats->ustats.outbps);

	FUNC6(&stats->lock);

	FUNC3(skb, nl_stats);

	return 0;

nla_put_failure:
	FUNC6(&stats->lock);
	FUNC2(skb, nl_stats);
	return -EMSGSIZE;
}