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
struct afs_vnode {int cb_promised; struct afs_server* server; int /*<<< orphan*/  server_rb; int /*<<< orphan*/  cb_promise; int /*<<< orphan*/  flags; } ;
struct afs_server {int /*<<< orphan*/  fs_lock; int /*<<< orphan*/  fs_vnodes; int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  cb_promises; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct afs_server*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_server*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct afs_vnode *vnode)
{
	struct afs_server *server;

	FUNC1("{%p}", vnode->server);

	FUNC5(AFS_VNODE_DELETED, &vnode->flags);

	server = vnode->server;
	if (server) {
		if (vnode->cb_promised) {
			FUNC6(&server->cb_lock);
			if (vnode->cb_promised) {
				FUNC4(&vnode->cb_promise,
					 &server->cb_promises);
				vnode->cb_promised = false;
			}
			FUNC7(&server->cb_lock);
		}

		FUNC6(&server->fs_lock);
		FUNC4(&vnode->server_rb, &server->fs_vnodes);
		FUNC7(&server->fs_lock);

		vnode->server = NULL;
		FUNC3(server);
	} else {
		FUNC0(!vnode->cb_promised);
	}

	FUNC2("");
}