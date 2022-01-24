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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct afs_server {int /*<<< orphan*/  usage; TYPE_1__ addr; int /*<<< orphan*/  cb_break_work; int /*<<< orphan*/  cb_break_waitq; int /*<<< orphan*/  cb_lock; void* cb_promises; void* fs_vnodes; int /*<<< orphan*/  fs_lock; int /*<<< orphan*/  sem; int /*<<< orphan*/  grave; int /*<<< orphan*/  link; struct afs_cell* cell; } ;
struct afs_cell {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* RB_ROOT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct afs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_dispatch_give_up_callbacks ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct afs_server* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct in_addr const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct afs_server *FUNC11(struct afs_cell *cell,
					   const struct in_addr *addr)
{
	struct afs_server *server;

	FUNC2("");

	server = FUNC8(sizeof(struct afs_server), GFP_KERNEL);
	if (server) {
		FUNC5(&server->usage, 1);
		server->cell = cell;

		FUNC1(&server->link);
		FUNC1(&server->grave);
		FUNC6(&server->sem);
		FUNC10(&server->fs_lock);
		server->fs_vnodes = RB_ROOT;
		server->cb_promises = RB_ROOT;
		FUNC10(&server->cb_lock);
		FUNC7(&server->cb_break_waitq);
		FUNC0(&server->cb_break_work,
				  afs_dispatch_give_up_callbacks);

		FUNC9(&server->addr, addr, sizeof(struct in_addr));
		server->addr.s_addr = addr->s_addr;
	}

	FUNC3(" = %p{%d}", server, FUNC4(&server->usage));
	return server;
}