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
struct ipx_route_definition {int /*<<< orphan*/  ipx_router_node; int /*<<< orphan*/  ipx_network; int /*<<< orphan*/  ipx_router_network; } ;
struct ipx_interface {int dummy; } ;

/* Variables and functions */
 int ENETUNREACH ; 
 struct ipx_interface* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipx_interface*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ipx_interface*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ipx_route_definition *rd)
{
	struct ipx_interface *intrfc;
	int rc = -ENETUNREACH;

	/* Find the appropriate interface */
	intrfc = FUNC0(rd->ipx_router_network);
	if (!intrfc)
		goto out;
	rc = FUNC2(rd->ipx_network, intrfc, rd->ipx_router_node);
	FUNC1(intrfc);
out:
	return rc;
}