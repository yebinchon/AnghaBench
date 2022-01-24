#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct genl_multicast_group {struct genl_family* family; } ;
struct genl_family {int /*<<< orphan*/  netnsok; } ;
struct TYPE_3__ {int /*<<< orphan*/  genl_sock; } ;

/* Variables and functions */
#define  CTRL_CMD_DELFAMILY 131 
#define  CTRL_CMD_DELMCAST_GRP 130 
#define  CTRL_CMD_NEWFAMILY 129 
#define  CTRL_CMD_NEWMCAST_GRP 128 
 int EINVAL ; 
 int /*<<< orphan*/  GENL_ID_CTRL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct genl_family*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ init_net ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(int event, void *data)
{
	struct sk_buff *msg;
	struct genl_family *family;
	struct genl_multicast_group *grp;

	/* genl is still initialising */
	if (!init_net.genl_sock)
		return 0;

	switch (event) {
	case CTRL_CMD_NEWFAMILY:
	case CTRL_CMD_DELFAMILY:
		family = data;
		msg = FUNC2(family, 0, 0, event);
		break;
	case CTRL_CMD_NEWMCAST_GRP:
	case CTRL_CMD_DELMCAST_GRP:
		grp = data;
		family = grp->family;
		msg = FUNC3(data, 0, 0, event);
		break;
	default:
		return -EINVAL;
	}

	if (FUNC0(msg))
		return FUNC1(msg);

	if (!family->netnsok) {
		FUNC5(&init_net, msg, 0,
					GENL_ID_CTRL, GFP_KERNEL);
	} else {
		FUNC6();
		FUNC4(msg, 0, GENL_ID_CTRL, GFP_ATOMIC);
		FUNC7();
	}

	return 0;
}