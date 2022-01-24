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
struct afs_vnode {scalar_t__ cb_promised; int /*<<< orphan*/  vfs_inode; struct afs_server* server; } ;
struct afs_server {int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  cb_break_waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct afs_server*) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_server*,struct afs_vnode*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  myself ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct afs_vnode *vnode)
{
	struct afs_server *server = vnode->server;

	FUNC1(myself, current);

	FUNC4("%d", vnode->cb_promised);

	FUNC3("GIVE UP INODE %p", &vnode->vfs_inode);

	if (!vnode->cb_promised) {
		FUNC5(" [not promised]");
		return;
	}

	FUNC0(server != NULL);

	FUNC12(&server->cb_lock);
	if (vnode->cb_promised && FUNC7(server) == 0) {
		FUNC6(&server->cb_break_waitq, &myself);
		for (;;) {
			FUNC11(TASK_UNINTERRUPTIBLE);
			if (!vnode->cb_promised ||
			    FUNC7(server) != 0)
				break;
			FUNC13(&server->cb_lock);
			FUNC10();
			FUNC12(&server->cb_lock);
		}
		FUNC9(&server->cb_break_waitq, &myself);
		FUNC2(TASK_RUNNING);
	}

	/* of course, it's always possible for the server to break this vnode's
	 * callback first... */
	if (vnode->cb_promised)
		FUNC8(server, vnode);

	FUNC13(&server->cb_lock);
	FUNC5("");
}