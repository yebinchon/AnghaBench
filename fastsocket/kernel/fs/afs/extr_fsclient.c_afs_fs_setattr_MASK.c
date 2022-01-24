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
struct iattr {int ia_valid; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int /*<<< orphan*/  addr; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  operation_ID; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_vnode* reply; struct key* key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int ATTR_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSSTORESTATUS ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_RXFSStoreStatus ; 
 struct afs_call* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (struct afs_server*,struct key*,struct afs_vnode*,struct iattr*,struct afs_wait_mode const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,struct iattr*) ; 

int FUNC8(struct afs_server *server, struct key *key,
		   struct afs_vnode *vnode, struct iattr *attr,
		   const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	__be32 *bp;

	if (attr->ia_valid & ATTR_SIZE)
		return FUNC2(server, key, vnode, attr,
					   wait_mode);

	FUNC0(",%x,{%x:%u},,",
	       FUNC6(key), vnode->fid.vid, vnode->fid.vnode);

	call = FUNC1(&afs_RXFSStoreStatus,
				   (4 + 6) * 4,
				   (21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = key;
	call->reply = vnode;
	call->service_id = FS_SERVICE;
	call->port = FUNC5(AFS_FS_PORT);
	call->operation_ID = FSSTORESTATUS;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC4(FSSTORESTATUS);
	*bp++ = FUNC4(vnode->fid.vid);
	*bp++ = FUNC4(vnode->fid.vnode);
	*bp++ = FUNC4(vnode->fid.unique);

	FUNC7(&bp, attr);

	return FUNC3(&server->addr, call, GFP_NOFS, wait_mode);
}