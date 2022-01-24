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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct ovs_dp_stats {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_DP_ATTR_NAME ; 
 int /*<<< orphan*/  OVS_DP_ATTR_STATS ; 
 int /*<<< orphan*/  dp_datapath_genl_family ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct ovs_header*) ; 
 int FUNC1 (struct sk_buff*,struct ovs_header*) ; 
 struct ovs_header* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct datapath*,struct ovs_dp_stats*) ; 
 int /*<<< orphan*/  FUNC4 (struct datapath*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,struct ovs_dp_stats*) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct datapath*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct datapath *dp, struct sk_buff *skb,
				u32 pid, u32 seq, u32 flags, u8 cmd)
{
	struct ovs_header *ovs_header;
	struct ovs_dp_stats dp_stats;
	int err;

	ovs_header = FUNC2(skb, pid, seq, &dp_datapath_genl_family,
				   flags, cmd);
	if (!ovs_header)
		goto error;

	ovs_header->dp_ifindex = FUNC4(dp);

	FUNC8();
	err = FUNC6(skb, OVS_DP_ATTR_NAME, FUNC7(dp));
	FUNC9();
	if (err)
		goto nla_put_failure;

	FUNC3(dp, &dp_stats);
	if (FUNC5(skb, OVS_DP_ATTR_STATS, sizeof(struct ovs_dp_stats), &dp_stats))
		goto nla_put_failure;

	return FUNC1(skb, ovs_header);

nla_put_failure:
	FUNC0(skb, ovs_header);
error:
	return -EMSGSIZE;
}