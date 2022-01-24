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
struct afs_vnode {int cb_promised; int /*<<< orphan*/  cb_promise; struct afs_server* server; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rb_node; } ;
struct afs_server {int /*<<< orphan*/  cb_lock; TYPE_1__ cb_promises; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct afs_vnode *vnode)
{
	struct afs_server *server = vnode->server;

	FUNC1("%d", vnode->cb_promised);

	if (!vnode->cb_promised) {
		FUNC2(" [not promised]");
		return;
	}

	FUNC0(server != NULL);

	FUNC4(&server->cb_lock);
	if (vnode->cb_promised) {
		FUNC0(server->cb_promises.rb_node != NULL);
		FUNC3(&vnode->cb_promise, &server->cb_promises);
		vnode->cb_promised = false;
	}
	FUNC5(&server->cb_lock);
	FUNC2("");
}