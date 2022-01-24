#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; int /*<<< orphan*/  attrs; int /*<<< orphan*/  userhdr; } ;
struct datapath {int /*<<< orphan*/  sk; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  genl_sock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  OVS_DP_CMD_NEW ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ ovs_dp_datapath_multicast_group ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct genl_info*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct sk_buff *reply;
	struct datapath *dp;
	int err;

	FUNC5();
	dp = FUNC2(FUNC8(skb->sk), info->userhdr, info->attrs);
	err = FUNC1(dp);
	if (FUNC0(dp))
		goto unlock;

	reply = FUNC4(dp, info->snd_pid,
				      info->snd_seq, OVS_DP_CMD_NEW);
	if (FUNC0(reply)) {
		err = FUNC1(reply);
		FUNC3(FUNC8(skb->sk)->genl_sock, 0,
				ovs_dp_datapath_multicast_group.id, err);
		err = 0;
		goto unlock;
	}

	FUNC7();
	FUNC6(reply, info, &ovs_dp_datapath_multicast_group);

	return 0;
unlock:
	FUNC7();
	return err;
}