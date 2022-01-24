#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vport {scalar_t__ upcall_pid; TYPE_1__* ops; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; int /*<<< orphan*/  userhdr; struct nlattr** attrs; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct vport*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 size_t OVS_VPORT_ATTR_OPTIONS ; 
 size_t OVS_VPORT_ATTR_TYPE ; 
 size_t OVS_VPORT_ATTR_UPCALL_PID ; 
 int /*<<< orphan*/  OVS_VPORT_CMD_NEW ; 
 int FUNC2 (struct vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct vport* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr**) ; 
 scalar_t__ FUNC5 (struct nlattr*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ovs_dp_vport_multicast_group ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct vport*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vport*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct sk_buff *reply;
	struct vport *vport;
	int err;

	FUNC7();
	vport = FUNC4(FUNC12(skb->sk), info->userhdr, a);
	err = FUNC2(vport);
	if (FUNC1(vport))
		goto exit_unlock;

	if (a[OVS_VPORT_ATTR_TYPE] &&
	    FUNC5(a[OVS_VPORT_ATTR_TYPE]) != vport->ops->type) {
		err = -EINVAL;
		goto exit_unlock;
	}

	reply = FUNC6(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!reply) {
		err = -ENOMEM;
		goto exit_unlock;
	}

	if (a[OVS_VPORT_ATTR_OPTIONS]) {
		err = FUNC11(vport, a[OVS_VPORT_ATTR_OPTIONS]);
		if (err)
			goto exit_free;
	}

	if (a[OVS_VPORT_ATTR_UPCALL_PID])
		vport->upcall_pid = FUNC5(a[OVS_VPORT_ATTR_UPCALL_PID]);

	err = FUNC10(vport, reply, info->snd_pid,
				      info->snd_seq, 0, OVS_VPORT_CMD_NEW);
	FUNC0(err < 0);

	FUNC9();
	FUNC8(reply, info, &ovs_dp_vport_multicast_group);
	return 0;

exit_free:
	FUNC3(reply);
exit_unlock:
	FUNC9();
	return err;
}