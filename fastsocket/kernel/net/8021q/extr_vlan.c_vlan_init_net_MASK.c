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
struct vlan_net {int /*<<< orphan*/  name_type; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VLAN_NAME_TYPE_RAW_PLUS_VID_NO_PAD ; 
 int /*<<< orphan*/  FUNC0 (struct vlan_net*) ; 
 struct vlan_net* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net*,int /*<<< orphan*/ ,struct vlan_net*) ; 
 int /*<<< orphan*/  vlan_net_id ; 
 int FUNC3 (struct net*) ; 

__attribute__((used)) static int FUNC4(struct net *net)
{
	int err;
	struct vlan_net *vn;

	err = -ENOMEM;
	vn = FUNC1(sizeof(struct vlan_net), GFP_KERNEL);
	if (vn == NULL)
		goto err_alloc;

	err = FUNC2(net, vlan_net_id, vn);
	if (err < 0)
		goto err_assign;

	vn->name_type = VLAN_NAME_TYPE_RAW_PLUS_VID_NO_PAD;

	err = FUNC3(net);
	if (err < 0)
		goto err_proc;

	return 0;

err_proc:
	/* nothing */
err_assign:
	FUNC0(vn);
err_alloc:
	return err;
}