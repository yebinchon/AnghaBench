#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_cred {int dummy; } ;
struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;
struct nfs4_state_owner {TYPE_1__ so_sequence; struct rpc_cred* so_cred; struct nfs_server* so_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_state_owner*) ; 
 struct nfs4_state_owner* FUNC2 () ; 
 struct nfs4_state_owner* FUNC3 (struct nfs_server*,struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_server*) ; 
 struct nfs4_state_owner* FUNC5 (struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct nfs4_state_owner *FUNC9(struct nfs_server *server,
					      struct rpc_cred *cred)
{
	struct nfs_client *clp = server->nfs_client;
	struct nfs4_state_owner *sp, *new;

	FUNC7(&clp->cl_lock);
	sp = FUNC3(server, cred);
	FUNC8(&clp->cl_lock);
	if (sp != NULL)
		goto out;
	new = FUNC2();
	if (new == NULL)
		goto out;
	new->so_server = server;
	new->so_cred = cred;
	FUNC7(&clp->cl_lock);
	sp = FUNC5(new);
	FUNC8(&clp->cl_lock);
	if (sp == new)
		FUNC0(cred);
	else {
		FUNC6(&new->so_sequence.wait);
		FUNC1(new);
	}
out:
	FUNC4(server);
	return sp;
}