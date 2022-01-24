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
struct vport {int /*<<< orphan*/  sk; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct ovs_header {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; struct ovs_header* userhdr; struct nlattr** attrs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vport*) ; 
 int /*<<< orphan*/  OVS_VPORT_CMD_NEW ; 
 int FUNC1 (struct vport*) ; 
 int FUNC2 (struct vport*,struct genl_info*) ; 
 struct vport* FUNC3 (int /*<<< orphan*/ ,struct ovs_header*,struct nlattr**) ; 
 struct vport* FUNC4 (struct vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct ovs_header *ovs_header = info->userhdr;
	struct sk_buff *reply;
	struct vport *vport;
	int err;

	FUNC5();
	vport = FUNC3(FUNC7(skb->sk), ovs_header, a);
	err = FUNC1(vport);
	if (FUNC0(vport))
		goto exit_unlock;

	reply = FUNC4(vport, info->snd_pid,
					 info->snd_seq, OVS_VPORT_CMD_NEW);
	err = FUNC1(reply);
	if (FUNC0(reply))
		goto exit_unlock;

	FUNC6();

	return FUNC2(reply, info);

exit_unlock:
	FUNC6();
	return err;
}