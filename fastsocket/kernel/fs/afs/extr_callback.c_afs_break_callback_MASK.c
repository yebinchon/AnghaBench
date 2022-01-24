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
struct afs_vnode {int cb_promised; int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_locks; int /*<<< orphan*/  granted_locks; int /*<<< orphan*/  cb_broken_work; int /*<<< orphan*/  cb_promise; int /*<<< orphan*/  flags; } ;
struct afs_server {int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  cb_promises; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_CB_BROKEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_callback_update_worker ; 
 int /*<<< orphan*/  FUNC2 (struct afs_vnode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct afs_server *server,
			       struct afs_vnode *vnode)
{
	FUNC1("");

	FUNC6(AFS_VNODE_CB_BROKEN, &vnode->flags);

	if (vnode->cb_promised) {
		FUNC7(&vnode->lock);

		FUNC0("break callback");

		FUNC7(&server->cb_lock);
		if (vnode->cb_promised) {
			FUNC5(&vnode->cb_promise, &server->cb_promises);
			vnode->cb_promised = false;
		}
		FUNC8(&server->cb_lock);

		FUNC4(afs_callback_update_worker, &vnode->cb_broken_work);
		if (FUNC3(&vnode->granted_locks) &&
		    !FUNC3(&vnode->pending_locks))
			FUNC2(vnode);
		FUNC8(&vnode->lock);
	}
}