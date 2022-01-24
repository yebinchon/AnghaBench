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
struct nfs_server {int /*<<< orphan*/  lockowner_id; struct nfs_client* nfs_client; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;
struct nfs4_lock_state {TYPE_1__ ls_sequence; int /*<<< orphan*/  ls_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_lock_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct nfs_server *server, struct nfs4_lock_state *lsp)
{
	struct nfs_client *clp = server->nfs_client;

	FUNC3(&clp->cl_lock);
	FUNC1(&server->lockowner_id, &lsp->ls_id);
	FUNC4(&clp->cl_lock);
	FUNC2(&lsp->ls_sequence.wait);
	FUNC0(lsp);
}