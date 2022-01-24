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
struct pohmelfs_ctl {scalar_t__ ack; } ;
struct TYPE_3__ {int len; scalar_t__ ack; } ;
struct pohmelfs_cn_ack {int error; int msg_num; TYPE_1__ msg; TYPE_1__ ctl; } ;
struct cn_msg {scalar_t__ ack; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int POHMELFS_CTLINFO_ACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pohmelfs_cn_ack*) ; 
 struct pohmelfs_cn_ack* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct pohmelfs_ctl*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pohmelfs_cn_ack*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(int err, int msg_num, int action, struct cn_msg *msg, struct pohmelfs_ctl *ctl)
{
	struct pohmelfs_cn_ack *ack;

	ack = FUNC2(sizeof(struct pohmelfs_cn_ack), GFP_KERNEL);
	if (!ack)
		return -ENOMEM;

	FUNC4(ack, 0, sizeof(struct pohmelfs_cn_ack));
	FUNC3(&ack->msg, msg, sizeof(struct cn_msg));

	if (action == POHMELFS_CTLINFO_ACK)
		FUNC3(&ack->ctl, ctl, sizeof(struct pohmelfs_ctl));

	ack->msg.len = sizeof(struct pohmelfs_cn_ack) - sizeof(struct cn_msg);
	ack->msg.ack = msg->ack + 1;
	ack->error = err;
	ack->msg_num = msg_num;

	FUNC0(&ack->msg, 0, GFP_KERNEL);
	FUNC1(ack);
	return 0;
}