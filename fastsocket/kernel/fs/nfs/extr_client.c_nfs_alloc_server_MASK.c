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
struct nfs_server {int /*<<< orphan*/  io_stats; int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/  active; int /*<<< orphan*/  state_owners_lru; int /*<<< orphan*/  layouts; int /*<<< orphan*/  delegations; int /*<<< orphan*/  master_link; int /*<<< orphan*/  client_link; int /*<<< orphan*/  client_acl; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_server*) ; 
 struct nfs_server* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_server*) ; 

__attribute__((used)) static struct nfs_server *FUNC9(void)
{
	struct nfs_server *server;

	server = FUNC5(sizeof(struct nfs_server), GFP_KERNEL);
	if (!server)
		return NULL;

	server->client = server->client_acl = FUNC0(-EINVAL);

	/* Zero out the NFS state stuff */
	FUNC1(&server->client_link);
	FUNC1(&server->master_link);
	FUNC1(&server->delegations);
	FUNC1(&server->layouts);
	FUNC1(&server->state_owners_lru);

	FUNC2(&server->active, 0);

	server->io_stats = FUNC6();
	if (!server->io_stats) {
		FUNC4(server);
		return NULL;
	}

	if (FUNC3(&server->backing_dev_info)) {
		FUNC7(server->io_stats);
		FUNC4(server);
		return NULL;
	}

	FUNC8(server);

	return server;
}