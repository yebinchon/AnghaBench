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
struct key {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int /*<<< orphan*/  addr; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_vnode* reply; struct key* key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSRELEASELOCK ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSReleaseLock ; 
 struct afs_call* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct afs_server *server,
			struct key *key,
			struct afs_vnode *vnode,
			const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	__be32 *bp;

	FUNC0("");

	call = FUNC1(&afs_RXFSReleaseLock, 4 * 4, 6 * 4);
	if (!call)
		return -ENOMEM;

	call->key = key;
	call->reply = vnode;
	call->service_id = FS_SERVICE;
	call->port = FUNC4(AFS_FS_PORT);

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC3(FSRELEASELOCK);
	*bp++ = FUNC3(vnode->fid.vid);
	*bp++ = FUNC3(vnode->fid.vnode);
	*bp++ = FUNC3(vnode->fid.unique);

	return FUNC2(&server->addr, call, GFP_NOFS, wait_mode);
}