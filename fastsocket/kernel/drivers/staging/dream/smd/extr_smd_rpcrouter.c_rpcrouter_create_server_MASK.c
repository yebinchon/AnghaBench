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
typedef  scalar_t__ uint32_t ;
struct rr_server {int /*<<< orphan*/  list; scalar_t__ vers; scalar_t__ prog; scalar_t__ cid; scalar_t__ pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct rr_server* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RPCROUTER_PID_REMOTE ; 
 int /*<<< orphan*/  FUNC1 (struct rr_server*) ; 
 struct rr_server* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rr_server*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct rr_server*) ; 
 int /*<<< orphan*/  server_list ; 
 int /*<<< orphan*/  server_list_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct rr_server *FUNC9(uint32_t pid,
							uint32_t cid,
							uint32_t prog,
							uint32_t ver)
{
	struct rr_server *server;
	unsigned long flags;
	int rc;

	server = FUNC2(sizeof(struct rr_server), GFP_KERNEL);
	if (!server)
		return FUNC0(-ENOMEM);

	FUNC5(server, 0, sizeof(struct rr_server));
	server->pid = pid;
	server->cid = cid;
	server->prog = prog;
	server->vers = ver;

	FUNC7(&server_list_lock, flags);
	FUNC3(&server->list, &server_list);
	FUNC8(&server_list_lock, flags);

	if (pid == RPCROUTER_PID_REMOTE) {
		rc = FUNC6(server);
		if (rc < 0)
			goto out_fail;
	}
	return server;
out_fail:
	FUNC7(&server_list_lock, flags);
	FUNC4(&server->list);
	FUNC8(&server_list_lock, flags);
	FUNC1(server);
	return FUNC0(rc);
}