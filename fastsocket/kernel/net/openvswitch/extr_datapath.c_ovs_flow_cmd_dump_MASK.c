#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct sw_flow {int dummy; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct netlink_callback {void** args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct flow_table {int dummy; } ;
struct datapath {int /*<<< orphan*/  table; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  OVS_FLOW_CMD_NEW ; 
 struct ovs_header* FUNC1 (int /*<<< orphan*/ ) ; 
 struct datapath* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct sw_flow*,struct datapath*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sw_flow* FUNC5 (struct flow_table*,void**,void**) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct flow_table* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct ovs_header *ovs_header = FUNC1(FUNC3(cb->nlh));
	struct datapath *dp;
	struct flow_table *table;

	FUNC6();
	dp = FUNC2(FUNC9(skb->sk), ovs_header->dp_ifindex);
	if (!dp) {
		FUNC7();
		return -ENODEV;
	}

	table = FUNC8(dp->table);

	for (;;) {
		struct sw_flow *flow;
		u32 bucket, obj;

		bucket = cb->args[0];
		obj = cb->args[1];
		flow = FUNC5(table, &bucket, &obj);
		if (!flow)
			break;

		if (FUNC4(flow, dp, skb,
					   FUNC0(cb->skb).pid,
					   cb->nlh->nlmsg_seq, NLM_F_MULTI,
					   OVS_FLOW_CMD_NEW) < 0)
			break;

		cb->args[0] = bucket;
		cb->args[1] = obj;
	}
	FUNC7();
	return skb->len;
}