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
typedef  void vxlan_sock ;
struct vxlan_port {void* vs; int /*<<< orphan*/  name; } ;
struct vport_parms {int /*<<< orphan*/  name; struct nlattr* options; int /*<<< orphan*/  dp; } ;
typedef  void vport ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  OVS_TUNNEL_ATTR_DST_PORT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC3 (struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr*) ; 
 struct net* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int /*<<< orphan*/ *,struct vport_parms const*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  ovs_vxlan_vport_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_rcv ; 
 void* FUNC10 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 struct vxlan_port* FUNC11 (void*) ; 

__attribute__((used)) static struct vport *FUNC12(const struct vport_parms *parms)
{
	struct net *net = FUNC6(parms->dp);
	struct nlattr *options = parms->options;
	struct vxlan_port *vxlan_port;
	struct vxlan_sock *vs;
	struct vport *vport;
	struct nlattr *a;
	u16 dst_port;
	int err;

	if (!options) {
		err = -EINVAL;
		goto error;
	}
	a = FUNC3(options, OVS_TUNNEL_ATTR_DST_PORT);
	if (a && FUNC5(a) == sizeof(u16)) {
		dst_port = FUNC4(a);
	} else {
		/* Require destination port from userspace. */
		err = -EINVAL;
		goto error;
	}

	vport = FUNC7(sizeof(struct vxlan_port),
				&ovs_vxlan_vport_ops, parms);
	if (FUNC1(vport))
		return vport;

	vxlan_port = FUNC11(vport);
	FUNC9(vxlan_port->name, parms->name, IFNAMSIZ);

	vs = FUNC10(net, FUNC2(dst_port), vxlan_rcv, vport, true);
	if (FUNC1(vs)) {
		FUNC8(vport);
		return (void *)vs;
	}
	vxlan_port->vs = vs;

	return vport;

error:
	return FUNC0(err);
}