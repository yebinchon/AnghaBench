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
struct nfs_server {int /*<<< orphan*/  state_owners_lru; struct nfs_client* nfs_client; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; } ;
struct nfs4_state_owner {int /*<<< orphan*/  so_lru; int /*<<< orphan*/  so_expires; int /*<<< orphan*/  so_server_node; int /*<<< orphan*/  so_count; struct nfs_server* so_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct nfs4_state_owner *sp)
{
	struct nfs_server *server = sp->so_server;
	struct nfs_client *clp = server->nfs_client;

	if (!FUNC1(&sp->so_count, &clp->cl_lock))
		return;

	if (!FUNC0(&sp->so_server_node)) {
		sp->so_expires = jiffies;
		FUNC2(&sp->so_lru, &server->state_owners_lru);
		FUNC5(&clp->cl_lock);
	} else {
		FUNC4(sp);
		FUNC5(&clp->cl_lock);
		FUNC3(sp);
	}
}