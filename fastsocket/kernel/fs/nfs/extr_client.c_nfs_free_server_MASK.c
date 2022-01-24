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
struct nfs_server {int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/  io_stats; int /*<<< orphan*/  nfs_client; int /*<<< orphan*/  client; int /*<<< orphan*/  client_acl; int /*<<< orphan*/  (* destroy ) (struct nfs_server*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_server*) ; 

void FUNC11(struct nfs_server *server)
{
	FUNC2("--> nfs_free_server()\n");

	FUNC7(server);
	FUNC10(server);

	if (server->destroy != NULL)
		server->destroy(server);

	if (!FUNC0(server->client_acl))
		FUNC8(server->client_acl);
	if (!FUNC0(server->client))
		FUNC8(server->client);

	FUNC5(server->nfs_client);

	FUNC4(server->io_stats);
	FUNC1(&server->backing_dev_info);
	FUNC3(server);
	FUNC6();
	FUNC2("<-- nfs_free_server()\n");
}