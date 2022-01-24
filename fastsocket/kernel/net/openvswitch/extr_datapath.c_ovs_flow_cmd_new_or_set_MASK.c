#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sw_flow_key {int dummy; } ;
struct sw_flow_actions {int /*<<< orphan*/  sk; int /*<<< orphan*/  lock; int /*<<< orphan*/  sf_acts; } ;
struct sw_flow {int /*<<< orphan*/  sk; int /*<<< orphan*/  lock; int /*<<< orphan*/  sf_acts; } ;
struct sk_buff {int /*<<< orphan*/  sk; int /*<<< orphan*/  lock; int /*<<< orphan*/  sf_acts; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; TYPE_2__* nlhdr; TYPE_1__* genlhdr; struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct flow_table {int /*<<< orphan*/  sk; int /*<<< orphan*/  lock; int /*<<< orphan*/  sf_acts; } ;
struct datapath {int /*<<< orphan*/  table; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
struct TYPE_9__ {int /*<<< orphan*/  genl_sock; } ;
struct TYPE_8__ {int nlmsg_flags; } ;
struct TYPE_7__ {scalar_t__ cmd; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct sw_flow_actions*) ; 
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 size_t OVS_FLOW_ATTR_ACTIONS ; 
 size_t OVS_FLOW_ATTR_CLEAR ; 
 size_t OVS_FLOW_ATTR_KEY ; 
 scalar_t__ OVS_FLOW_CMD_NEW ; 
 scalar_t__ OVS_FLOW_CMD_SET ; 
 int FUNC1 (struct sw_flow_actions*) ; 
 int /*<<< orphan*/  FUNC2 (struct sw_flow_actions*) ; 
 struct datapath* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sw_flow_actions*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 TYPE_4__ ovs_dp_flow_multicast_group ; 
 struct sw_flow_actions* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sw_flow_actions* FUNC8 () ; 
 struct sw_flow_actions* FUNC9 (struct sw_flow_actions*,struct datapath*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sw_flow_actions*) ; 
 int FUNC11 (struct sw_flow_key*,int*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct sw_flow_actions*) ; 
 struct sw_flow_actions* FUNC13 (struct sw_flow_actions*) ; 
 int /*<<< orphan*/  FUNC14 (struct sw_flow_actions*,struct sw_flow_actions*,struct sw_flow_key*,int) ; 
 struct sw_flow_actions* FUNC15 (struct sw_flow_actions*,struct sw_flow_key*,int) ; 
 scalar_t__ FUNC16 (struct sw_flow_actions*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct sw_flow_actions*,struct genl_info*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 struct sw_flow_actions* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct sw_flow_actions*) ; 
 TYPE_3__* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (struct nlattr*,struct sw_flow_key*,int /*<<< orphan*/ ,struct sw_flow_actions**) ; 

__attribute__((used)) static int FUNC26(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct ovs_header *ovs_header = info->userhdr;
	struct sw_flow_key key;
	struct sw_flow *flow;
	struct sk_buff *reply;
	struct datapath *dp;
	struct flow_table *table;
	struct sw_flow_actions *acts = NULL;
	int error;
	int key_len;

	/* Extract key. */
	error = -EINVAL;
	if (!a[OVS_FLOW_ATTR_KEY])
		goto error;
	error = FUNC11(&key, &key_len, a[OVS_FLOW_ATTR_KEY]);
	if (error)
		goto error;

	/* Validate actions. */
	if (a[OVS_FLOW_ATTR_ACTIONS]) {
		acts = FUNC7(FUNC6(a[OVS_FLOW_ATTR_ACTIONS]));
		error = FUNC1(acts);
		if (FUNC0(acts))
			goto error;

		error = FUNC25(a[OVS_FLOW_ATTR_ACTIONS], &key,  0, &acts);
		if (error)
			goto err_kfree;
	} else if (info->genlhdr->cmd == OVS_FLOW_CMD_NEW) {
		error = -EINVAL;
		goto error;
	}

	FUNC17();
	dp = FUNC3(FUNC22(skb->sk), ovs_header->dp_ifindex);
	error = -ENODEV;
	if (!dp)
		goto err_unlock_ovs;

	table = FUNC20(dp->table);
	flow = FUNC15(table, &key, key_len);
	if (!flow) {
		/* Bail out if we're not allowed to create a new flow. */
		error = -ENOENT;
		if (info->genlhdr->cmd == OVS_FLOW_CMD_SET)
			goto err_unlock_ovs;

		/* Expand table, if necessary, to make room. */
		if (FUNC16(table)) {
			struct flow_table *new_table;

			new_table = FUNC13(table);
			if (!FUNC0(new_table)) {
				FUNC21(dp->table, new_table);
				FUNC12(table);
				table = FUNC20(dp->table);
			}
		}

		/* Allocate flow. */
		flow = FUNC8();
		if (FUNC0(flow)) {
			error = FUNC1(flow);
			goto err_unlock_ovs;
		}
		FUNC2(flow);

		FUNC21(flow->sf_acts, acts);

		/* Put flow in bucket. */
		FUNC14(table, flow, &key, key_len);

		reply = FUNC9(flow, dp, info->snd_pid,
						info->snd_seq,
						OVS_FLOW_CMD_NEW);
	} else {
		/* We found a matching flow. */
		struct sw_flow_actions *old_acts;

		/* Bail out if we're not allowed to modify an existing flow.
		 * We accept NLM_F_CREATE in place of the intended NLM_F_EXCL
		 * because Generic Netlink treats the latter as a dump
		 * request.  We also accept NLM_F_EXCL in case that bug ever
		 * gets fixed.
		 */
		error = -EEXIST;
		if (info->genlhdr->cmd == OVS_FLOW_CMD_NEW &&
		    info->nlhdr->nlmsg_flags & (NLM_F_CREATE | NLM_F_EXCL))
			goto err_unlock_ovs;

		/* Update actions. */
		old_acts = FUNC20(flow->sf_acts);
		FUNC21(flow->sf_acts, acts);
		FUNC10(old_acts);

		reply = FUNC9(flow, dp, info->snd_pid,
					       info->snd_seq, OVS_FLOW_CMD_NEW);

		/* Clear stats. */
		if (a[OVS_FLOW_ATTR_CLEAR]) {
			FUNC23(&flow->lock);
			FUNC2(flow);
			FUNC24(&flow->lock);
		}
	}
	FUNC19();

	if (!FUNC0(reply))
		FUNC18(reply, info, &ovs_dp_flow_multicast_group);
	else
		FUNC5(FUNC22(skb->sk)->genl_sock, 0,
				ovs_dp_flow_multicast_group.id, FUNC1(reply));
	return 0;

err_unlock_ovs:
	FUNC19();
err_kfree:
	FUNC4(acts);
error:
	return error;
}