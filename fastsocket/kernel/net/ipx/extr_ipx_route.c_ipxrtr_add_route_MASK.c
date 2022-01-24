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
struct ipx_route {int ir_routed; int /*<<< orphan*/  ir_router_node; struct ipx_interface* ir_intrfc; int /*<<< orphan*/  ir_net; int /*<<< orphan*/  node; int /*<<< orphan*/  refcnt; } ;
struct ipx_interface {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EAGAIN ; 
 int EEXIST ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPX_NODE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct ipx_interface* ipx_internal_net ; 
 int /*<<< orphan*/  ipx_routes ; 
 int /*<<< orphan*/  ipx_routes_lock ; 
 int /*<<< orphan*/  FUNC1 (struct ipx_route*) ; 
 struct ipx_route* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipx_route*) ; 
 struct ipx_route* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(__be32 network, struct ipx_interface *intrfc,
		     unsigned char *node)
{
	struct ipx_route *rt;
	int rc;

	/* Get a route structure; either existing or create */
	rt = FUNC2(network);
	if (!rt) {
		rt = FUNC4(sizeof(*rt), GFP_ATOMIC);
		rc = -EAGAIN;
		if (!rt)
			goto out;

		FUNC0(&rt->refcnt, 1);
		FUNC1(rt);
		FUNC8(&ipx_routes_lock);
		FUNC5(&rt->node, &ipx_routes);
		FUNC9(&ipx_routes_lock);
	} else {
		rc = -EEXIST;
		if (intrfc == ipx_internal_net)
			goto out_put;
	}

	rt->ir_net 	= network;
	rt->ir_intrfc 	= intrfc;
	if (!node) {
		FUNC7(rt->ir_router_node, '\0', IPX_NODE_LEN);
		rt->ir_routed = 0;
	} else {
		FUNC6(rt->ir_router_node, node, IPX_NODE_LEN);
		rt->ir_routed = 1;
	}

	rc = 0;
out_put:
	FUNC3(rt);
out:
	return rc;
}