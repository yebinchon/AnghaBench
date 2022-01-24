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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; scalar_t__* attrs; } ;
struct genl_family {int /*<<< orphan*/  netnsok; } ;

/* Variables and functions */
 size_t CTRL_ATTR_FAMILY_ID ; 
 size_t CTRL_ATTR_FAMILY_NAME ; 
 int /*<<< orphan*/  CTRL_CMD_NEWFAMILY ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct genl_family*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct genl_family* FUNC3 (int /*<<< orphan*/ ) ; 
 struct genl_family* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct genl_info*) ; 
 int FUNC6 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	struct sk_buff *msg;
	struct genl_family *res = NULL;
	int err = -EINVAL;

	if (info->attrs[CTRL_ATTR_FAMILY_ID]) {
		u16 id = FUNC9(info->attrs[CTRL_ATTR_FAMILY_ID]);
		res = FUNC3(id);
		err = -ENOENT;
	}

	if (info->attrs[CTRL_ATTR_FAMILY_NAME]) {
		char *name;

		name = FUNC8(info->attrs[CTRL_ATTR_FAMILY_NAME]);
		res = FUNC4(name);
		err = -ENOENT;
	}

	if (res == NULL)
		return err;

	if (!res->netnsok && !FUNC7(FUNC5(info), &init_net)) {
		/* family doesn't exist here */
		return -ENOENT;
	}

	msg = FUNC2(res, info->snd_pid, info->snd_seq,
				    CTRL_CMD_NEWFAMILY);
	if (FUNC0(msg))
		return FUNC1(msg);

	return FUNC6(msg, info);
}