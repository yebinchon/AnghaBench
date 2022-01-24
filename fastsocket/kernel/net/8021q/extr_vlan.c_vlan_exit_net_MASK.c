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
struct vlan_net {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlan_net*) ; 
 struct vlan_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlan_link_ops ; 
 int /*<<< orphan*/  vlan_net_id ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 

__attribute__((used)) static void FUNC4(struct net *net)
{
	struct vlan_net *vn;

	vn = FUNC1(net, vlan_net_id);
	FUNC2(net, &vlan_link_ops);
	FUNC3(net);
	FUNC0(vn);
}