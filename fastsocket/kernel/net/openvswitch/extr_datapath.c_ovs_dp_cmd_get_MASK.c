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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; int /*<<< orphan*/  attrs; int /*<<< orphan*/  userhdr; } ;
struct datapath {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  OVS_DP_CMD_NEW ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct genl_info *info)
{
	struct sk_buff *reply;
	struct datapath *dp;
	int err;

	FUNC5();
	dp = FUNC3(FUNC7(skb->sk), info->userhdr, info->attrs);
	if (FUNC0(dp)) {
		err = FUNC1(dp);
		goto unlock;
	}

	reply = FUNC4(dp, info->snd_pid,
				      info->snd_seq, OVS_DP_CMD_NEW);
	if (FUNC0(reply)) {
		err = FUNC1(reply);
		goto unlock;
	}

	FUNC6();
	return FUNC2(reply, info);

unlock:
	FUNC6();
	return err;
}