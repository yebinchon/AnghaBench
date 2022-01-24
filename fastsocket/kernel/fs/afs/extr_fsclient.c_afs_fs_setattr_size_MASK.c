#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct key {int dummy; } ;
struct iattr {int ia_valid; int ia_size; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_4__ {int vid; int vnode; int unique; } ;
struct TYPE_3__ {scalar_t__ data_version; } ;
struct afs_vnode {TYPE_2__ fid; TYPE_1__ status; } ;
struct afs_server {int /*<<< orphan*/  addr; } ;
struct afs_call {int operation_ID; int /*<<< orphan*/ * request; scalar_t__ store_version; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_vnode* reply; struct key* key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ATTR_SIZE ; 
 int ENOMEM ; 
 int FSSTOREDATA ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  afs_RXFSStoreData_as_Status ; 
 struct afs_call* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (struct afs_server*,struct key*,struct afs_vnode*,struct iattr*,struct afs_wait_mode const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct key*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,struct iattr*) ; 

__attribute__((used)) static int FUNC9(struct afs_server *server, struct key *key,
			       struct afs_vnode *vnode, struct iattr *attr,
			       const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	__be32 *bp;

	FUNC1(",%x,{%x:%u},,",
	       FUNC7(key), vnode->fid.vid, vnode->fid.vnode);

	FUNC0(attr->ia_valid & ATTR_SIZE);
	if (attr->ia_size >> 32)
		return FUNC3(server, key, vnode, attr,
					     wait_mode);

	call = FUNC2(&afs_RXFSStoreData_as_Status,
				   (4 + 6 + 3) * 4,
				   (21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = key;
	call->reply = vnode;
	call->service_id = FS_SERVICE;
	call->port = FUNC6(AFS_FS_PORT);
	call->store_version = vnode->status.data_version + 1;
	call->operation_ID = FSSTOREDATA;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC5(FSSTOREDATA);
	*bp++ = FUNC5(vnode->fid.vid);
	*bp++ = FUNC5(vnode->fid.vnode);
	*bp++ = FUNC5(vnode->fid.unique);

	FUNC8(&bp, attr);

	*bp++ = 0;				/* position of start of write */
	*bp++ = 0;				/* size of write */
	*bp++ = FUNC5(attr->ia_size);		/* new file length */

	return FUNC4(&server->addr, call, GFP_NOFS, wait_mode);
}