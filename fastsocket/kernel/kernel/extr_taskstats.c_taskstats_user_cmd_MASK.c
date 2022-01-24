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
typedef  int /*<<< orphan*/  u32 ;
struct taskstats {int dummy; } ;
struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; int /*<<< orphan*/  snd_pid; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEREGISTER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REGISTER ; 
 size_t TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK ; 
 size_t TASKSTATS_CMD_ATTR_PID ; 
 size_t TASKSTATS_CMD_ATTR_REGISTER_CPUMASK ; 
 size_t TASKSTATS_CMD_ATTR_TGID ; 
 int /*<<< orphan*/  TASKSTATS_CMD_NEW ; 
 int /*<<< orphan*/  TASKSTATS_TYPE_PID ; 
 int /*<<< orphan*/  TASKSTATS_TYPE_TGID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct taskstats*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct taskstats*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct taskstats* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 size_t FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct genl_info*,int /*<<< orphan*/ ,struct sk_buff**,size_t) ; 
 int FUNC11 (struct sk_buff*,struct genl_info*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct genl_info *info)
{
	int rc;
	struct sk_buff *rep_skb;
	struct taskstats *stats;
	size_t size;
	cpumask_var_t mask;

	if (!FUNC1(&mask, GFP_KERNEL))
		return -ENOMEM;

	rc = FUNC9(info->attrs[TASKSTATS_CMD_ATTR_REGISTER_CPUMASK], mask);
	if (rc < 0)
		goto free_return_rc;
	if (rc == 0) {
		rc = FUNC0(info->snd_pid, mask, REGISTER);
		goto free_return_rc;
	}

	rc = FUNC9(info->attrs[TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK], mask);
	if (rc < 0)
		goto free_return_rc;
	if (rc == 0) {
		rc = FUNC0(info->snd_pid, mask, DEREGISTER);
free_return_rc:
		FUNC4(mask);
		return rc;
	}
	FUNC4(mask);

	/*
	 * Size includes space for nested attributes
	 */
	size = FUNC7(sizeof(u32)) +
		FUNC7(sizeof(struct taskstats)) + FUNC7(0);

	rc = FUNC10(info, TASKSTATS_CMD_NEW, &rep_skb, size);
	if (rc < 0)
		return rc;

	rc = -EINVAL;
	if (info->attrs[TASKSTATS_CMD_ATTR_PID]) {
		u32 pid = FUNC6(info->attrs[TASKSTATS_CMD_ATTR_PID]);
		stats = FUNC5(rep_skb, TASKSTATS_TYPE_PID, pid);
		if (!stats)
			goto err;

		rc = FUNC2(pid, NULL, stats);
		if (rc < 0)
			goto err;
	} else if (info->attrs[TASKSTATS_CMD_ATTR_TGID]) {
		u32 tgid = FUNC6(info->attrs[TASKSTATS_CMD_ATTR_TGID]);
		stats = FUNC5(rep_skb, TASKSTATS_TYPE_TGID, tgid);
		if (!stats)
			goto err;

		rc = FUNC3(tgid, NULL, stats);
		if (rc < 0)
			goto err;
	} else
		goto err;

	return FUNC11(rep_skb, info);
err:
	FUNC8(rep_skb);
	return rc;
}