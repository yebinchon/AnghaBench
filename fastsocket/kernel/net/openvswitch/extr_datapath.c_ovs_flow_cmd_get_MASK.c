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
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 size_t OVS_FLOW_ATTR_KEY ; 
 int /*<<< orphan*/  OVS_FLOW_CMD_NEW ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 struct datapath* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct sw_flow*,struct datapath*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sw_flow_key*,int*,struct nlattr*) ; 
 struct sw_flow* FUNC6 (struct flow_table*,struct sw_flow_key*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct flow_table* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct genl_info *info)
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

	if (!a[OVS_FLOW_ATTR_KEY])
		return -EINVAL;
	err = FUNC5(&key, &key_len, a[OVS_FLOW_ATTR_KEY]);
	if (err)
		return err;

	FUNC7();
	dp = FUNC3(FUNC10(skb->sk), ovs_header->dp_ifindex);
	if (!dp) {
		err = -ENODEV;
		goto unlock;
	}

	table = FUNC9(dp->table);
	flow = FUNC6(table, &key, key_len);
	if (!flow) {
		err = -ENOENT;
		goto unlock;
	}

	reply = FUNC4(flow, dp, info->snd_pid,
					info->snd_seq, OVS_FLOW_CMD_NEW);
	if (FUNC0(reply)) {
		err = FUNC1(reply);
		goto unlock;
	}

	FUNC8();
	return FUNC2(reply, info);
unlock:
	FUNC8();
	return err;
}