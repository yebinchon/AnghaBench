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
struct nfs_server {int /*<<< orphan*/  state_owners; struct nfs_client* nfs_client; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; } ;
struct nfs4_state_owner {int /*<<< orphan*/  so_server_node; struct nfs_server* so_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nfs4_state_owner *sp)
{
	if (!FUNC1(&sp->so_server_node)) {
		struct nfs_server *server = sp->so_server;
		struct nfs_client *clp = server->nfs_client;

		FUNC3(&clp->cl_lock);
		FUNC2(&sp->so_server_node, &server->state_owners);
		FUNC0(&sp->so_server_node);
		FUNC4(&clp->cl_lock);
	}
}