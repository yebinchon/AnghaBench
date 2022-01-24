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
typedef  int u32 ;
struct vport_parms {int port_no; void* upcall_pid; struct datapath* dp; struct nlattr* options; void* type; int /*<<< orphan*/  name; } ;
struct vport {int /*<<< orphan*/  sk; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct ovs_header {int /*<<< orphan*/  dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int DP_MAX_PORTS ; 
 int EBUSY ; 
 int EFBIG ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct vport*) ; 
 size_t OVS_VPORT_ATTR_NAME ; 
 size_t OVS_VPORT_ATTR_OPTIONS ; 
 size_t OVS_VPORT_ATTR_PORT_NO ; 
 size_t OVS_VPORT_ATTR_TYPE ; 
 size_t OVS_VPORT_ATTR_UPCALL_PID ; 
 int /*<<< orphan*/  OVS_VPORT_CMD_NEW ; 
 int FUNC1 (struct vport*) ; 
 struct datapath* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vport* FUNC3 (struct vport_parms*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 void* FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct vport*) ; 
 int /*<<< orphan*/  ovs_dp_vport_multicast_group ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct vport*,struct genl_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct vport* FUNC10 (struct vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vport* FUNC11 (struct datapath*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct genl_info *info)
{
	struct nlattr **a = info->attrs;
	struct ovs_header *ovs_header = info->userhdr;
	struct vport_parms parms;
	struct sk_buff *reply;
	struct vport *vport;
	struct datapath *dp;
	u32 port_no;
	int err;

	err = -EINVAL;
	if (!a[OVS_VPORT_ATTR_NAME] || !a[OVS_VPORT_ATTR_TYPE] ||
	    !a[OVS_VPORT_ATTR_UPCALL_PID])
		goto exit;

	FUNC7();
	dp = FUNC2(FUNC12(skb->sk), ovs_header->dp_ifindex);
	err = -ENODEV;
	if (!dp)
		goto exit_unlock;

	if (a[OVS_VPORT_ATTR_PORT_NO]) {
		port_no = FUNC5(a[OVS_VPORT_ATTR_PORT_NO]);

		err = -EFBIG;
		if (port_no >= DP_MAX_PORTS)
			goto exit_unlock;

		vport = FUNC11(dp, port_no);
		err = -EBUSY;
		if (vport)
			goto exit_unlock;
	} else {
		for (port_no = 1; ; port_no++) {
			if (port_no >= DP_MAX_PORTS) {
				err = -EFBIG;
				goto exit_unlock;
			}
			vport = FUNC11(dp, port_no);
			if (!vport)
				break;
		}
	}

	parms.name = FUNC4(a[OVS_VPORT_ATTR_NAME]);
	parms.type = FUNC5(a[OVS_VPORT_ATTR_TYPE]);
	parms.options = a[OVS_VPORT_ATTR_OPTIONS];
	parms.dp = dp;
	parms.port_no = port_no;
	parms.upcall_pid = FUNC5(a[OVS_VPORT_ATTR_UPCALL_PID]);

	vport = FUNC3(&parms);
	err = FUNC1(vport);
	if (FUNC0(vport))
		goto exit_unlock;

	err = 0;
	reply = FUNC10(vport, info->snd_pid, info->snd_seq,
					 OVS_VPORT_CMD_NEW);
	if (FUNC0(reply)) {
		err = FUNC1(reply);
		FUNC6(vport);
		goto exit_unlock;
	}

	FUNC8(reply, info, &ovs_dp_vport_multicast_group);

exit_unlock:
	FUNC9();
exit:
	return err;
}