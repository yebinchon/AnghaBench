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
struct ipx_interface_definition {int /*<<< orphan*/  ipx_node; int /*<<< orphan*/  ipx_network; } ;
struct ipx_interface {int /*<<< orphan*/  if_node; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int EAGAIN ; 
 int EEXIST ; 
 int /*<<< orphan*/  IPX_NODE_LEN ; 
 struct ipx_interface* ipx_internal_net ; 
 struct ipx_interface* ipx_primary_net ; 
 int FUNC0 (struct ipx_interface*) ; 
 struct ipx_interface* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct ipx_interface* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipx_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipx_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipx_interface*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ipx_interface_definition *idef)
{
	struct ipx_interface *intrfc;
	int rc = -EEXIST;

	/* Only one primary network allowed */
	if (ipx_primary_net)
		goto out;

	/* Must have a valid network number */
	rc = -EADDRNOTAVAIL;
	if (!idef->ipx_network)
		goto out;
	intrfc = FUNC2(idef->ipx_network);
	rc = -EADDRINUSE;
	if (intrfc) {
		FUNC5(intrfc);
		goto out;
	}
	intrfc = FUNC1(NULL, idef->ipx_network, 0, NULL, 1, 0);
	rc = -EAGAIN;
	if (!intrfc)
		goto out;
	FUNC6((char *)&(intrfc->if_node), idef->ipx_node, IPX_NODE_LEN);
	ipx_internal_net = ipx_primary_net = intrfc;
	FUNC3(intrfc);
	FUNC4(intrfc);

	rc = FUNC0(intrfc);
	FUNC5(intrfc);
out:
	return rc;
}