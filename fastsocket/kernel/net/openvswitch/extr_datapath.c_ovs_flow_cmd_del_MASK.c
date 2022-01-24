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
struct sw_flow_key {int dummy; } ;
struct sw_flow {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct flow_table {int dummy; } ;
struct datapath {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 size_t OVS_FLOW_ATTR_KEY ; 
 int /*<<< orphan*/  OVS_FLOW_CMD_DEL ; 
 int FUNC1 (struct datapath*) ; 
 struct datapath* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ovs_dp_flow_multicast_group ; 
 struct sk_buff* FUNC3 (struct sw_flow*) ; 
 int FUNC4 (struct sw_flow*,struct datapath*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sw_flow*) ; 
 int FUNC6 (struct sw_flow_key*,int*,struct nlattr*) ; 
 struct sw_flow* FUNC7 (struct flow_table*,struct sw_flow_key*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct flow_table*,struct sw_flow*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct flow_table* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct ovs_header *ovs_header = info->userhdr;
	struct sw_flow_key key;
	struct sk_buff *reply;
	struct sw_flow *flow;
	struct datapath *dp;
	struct flow_table *table;
	int err;
	int key_len;

	FUNC9();
	dp = FUNC2(FUNC13(skb->sk), ovs_header->dp_ifindex);
	if (!dp) {
		err = -ENODEV;
		goto unlock;
	}

	if (!a[OVS_FLOW_ATTR_KEY]) {
		err = FUNC1(dp);
		goto unlock;
	}
	err = FUNC6(&key, &key_len, a[OVS_FLOW_ATTR_KEY]);
	if (err)
		goto unlock;

	table = FUNC12(dp->table);
	flow = FUNC7(table, &key, key_len);
	if (!flow) {
		err = -ENOENT;
		goto unlock;
	}

	reply = FUNC3(flow);
	if (!reply) {
		err = -ENOMEM;
		goto unlock;
	}

	FUNC8(table, flow);

	err = FUNC4(flow, dp, reply, info->snd_pid,
				     info->snd_seq, 0, OVS_FLOW_CMD_DEL);
	FUNC0(err < 0);

	FUNC5(flow);
	FUNC11();

	FUNC10(reply, info, &ovs_dp_flow_multicast_group);
	return 0;
unlock:
	FUNC11();
	return err;
}