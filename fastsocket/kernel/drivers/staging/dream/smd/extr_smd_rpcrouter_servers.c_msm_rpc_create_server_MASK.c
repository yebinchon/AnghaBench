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
struct msm_rpc_server {scalar_t__ flags; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ FLAG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_server_list ; 
 int /*<<< orphan*/  rpc_server_list_lock ; 
 int /*<<< orphan*/  FUNC4 (struct msm_rpc_server*) ; 
 scalar_t__ rpc_servers_active ; 

int FUNC5(struct msm_rpc_server *server)
{
	/* make sure we're in a sane state first */
	server->flags = 0;
	FUNC0(&server->list);

	FUNC2(&rpc_server_list_lock);
	FUNC1(&server->list, &rpc_server_list);
	if (rpc_servers_active) {
		FUNC4(server);
		server->flags |= FLAG_REGISTERED;
	}
	FUNC3(&rpc_server_list_lock);

	return 0;
}