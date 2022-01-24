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
struct vport {scalar_t__ port_no; int /*<<< orphan*/  sk; } ;
struct sk_buff {scalar_t__ port_no; int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; int /*<<< orphan*/  userhdr; struct nlattr** attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct vport*) ; 
 scalar_t__ OVSP_LOCAL ; 
 int /*<<< orphan*/  OVS_VPORT_CMD_DEL ; 
 int FUNC1 (struct vport*) ; 
 struct vport* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC3 (struct vport*) ; 
 int /*<<< orphan*/  ovs_dp_vport_multicast_group ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct vport*,struct genl_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct vport* FUNC7 (struct vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct sk_buff *reply;
	struct vport *vport;
	int err;

	FUNC4();
	vport = FUNC2(FUNC8(skb->sk), info->userhdr, a);
	err = FUNC1(vport);
	if (FUNC0(vport))
		goto exit_unlock;

	if (vport->port_no == OVSP_LOCAL) {
		err = -EINVAL;
		goto exit_unlock;
	}

	reply = FUNC7(vport, info->snd_pid,
					 info->snd_seq, OVS_VPORT_CMD_DEL);
	err = FUNC1(reply);
	if (FUNC0(reply))
		goto exit_unlock;

	err = 0;
	FUNC3(vport);

	FUNC5(reply, info, &ovs_dp_vport_multicast_group);

exit_unlock:
	FUNC6();
	return err;
}