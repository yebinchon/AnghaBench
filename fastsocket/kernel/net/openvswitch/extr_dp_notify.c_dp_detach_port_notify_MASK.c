#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vport {struct datapath* dp; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  genl_sock; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  OVS_VPORT_CMD_DEL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vport*) ; 
 TYPE_2__* FUNC5 (struct datapath*) ; 
 TYPE_1__ ovs_dp_vport_multicast_group ; 
 struct sk_buff* FUNC6 (struct vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct vport *vport)
{
	struct sk_buff *notify;
	struct datapath *dp;

	dp = vport->dp;
	notify = FUNC6(vport, 0, 0,
					  OVS_VPORT_CMD_DEL);
	FUNC4(vport);
	if (FUNC0(notify)) {
		FUNC3(FUNC5(dp)->genl_sock, 0,
				ovs_dp_vport_multicast_group.id,
				FUNC1(notify));
		return;
	}

	FUNC2(FUNC5(dp), notify, 0,
				ovs_dp_vport_multicast_group.id,
				GFP_KERNEL);
}