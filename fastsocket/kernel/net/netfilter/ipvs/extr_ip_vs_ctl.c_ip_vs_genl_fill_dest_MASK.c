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
struct nlattr {int dummy; } ;
struct ip_vs_dest {int u_threshold; int l_threshold; int /*<<< orphan*/  stats; int /*<<< orphan*/  persistconns; int /*<<< orphan*/  inactconns; int /*<<< orphan*/  activeconns; int /*<<< orphan*/  weight; int /*<<< orphan*/  conn_flags; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPVS_CMD_ATTR_DEST ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_ACTIVE_CONNS ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_ADDR ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_FWD_METHOD ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_INACT_CONNS ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_L_THRESH ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_PERSIST_CONNS ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_PORT ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_STATS ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_U_THRESH ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_WEIGHT ; 
 int IP_VS_CONN_F_FWD_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct ip_vs_dest *dest)
{
	struct nlattr *nl_dest;

	nl_dest = FUNC7(skb, IPVS_CMD_ATTR_DEST);
	if (!nl_dest)
		return -EMSGSIZE;

	FUNC0(skb, IPVS_DEST_ATTR_ADDR, sizeof(dest->addr), &dest->addr);
	FUNC1(skb, IPVS_DEST_ATTR_PORT, dest->port);

	FUNC2(skb, IPVS_DEST_ATTR_FWD_METHOD,
		    FUNC3(&dest->conn_flags) & IP_VS_CONN_F_FWD_MASK);
	FUNC2(skb, IPVS_DEST_ATTR_WEIGHT, FUNC3(&dest->weight));
	FUNC2(skb, IPVS_DEST_ATTR_U_THRESH, dest->u_threshold);
	FUNC2(skb, IPVS_DEST_ATTR_L_THRESH, dest->l_threshold);
	FUNC2(skb, IPVS_DEST_ATTR_ACTIVE_CONNS,
		    FUNC3(&dest->activeconns));
	FUNC2(skb, IPVS_DEST_ATTR_INACT_CONNS,
		    FUNC3(&dest->inactconns));
	FUNC2(skb, IPVS_DEST_ATTR_PERSIST_CONNS,
		    FUNC3(&dest->persistconns));

	if (FUNC4(skb, IPVS_DEST_ATTR_STATS, &dest->stats))
		goto nla_put_failure;

	FUNC6(skb, nl_dest);

	return 0;

nla_put_failure:
	FUNC5(skb, nl_dest);
	return -EMSGSIZE;
}