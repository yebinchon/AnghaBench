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
struct nfs_server {int /*<<< orphan*/  master_link; int /*<<< orphan*/  client_link; struct nfs_client* nfs_client; } ;
struct nfs_client {int /*<<< orphan*/  cl_res_state; int /*<<< orphan*/  cl_superblocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_CS_STOP_RENEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_client_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct nfs_server *server)
{
	struct nfs_client *clp = server->nfs_client;

	FUNC4(&nfs_client_lock);
	FUNC1(&server->client_link);
	if (clp && FUNC2(&clp->cl_superblocks))
		FUNC3(NFS_CS_STOP_RENEW, &clp->cl_res_state);
	FUNC0(&server->master_link);
	FUNC5(&nfs_client_lock);

	FUNC6();
}