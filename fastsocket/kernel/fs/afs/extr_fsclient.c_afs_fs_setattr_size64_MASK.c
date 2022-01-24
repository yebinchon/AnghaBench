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
typedef  int u32 ;
struct key {int dummy; } ;
struct iattr {int ia_valid; int ia_size; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_4__ {int vid; int vnode; int unique; } ;
struct TYPE_3__ {scalar_t__ data_version; } ;
struct afs_vnode {TYPE_2__ fid; TYPE_1__ status; } ;
struct afs_server {int /*<<< orphan*/  addr; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/  operation_ID; scalar_t__ store_version; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_vnode* reply; struct key* key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ATTR_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSSTOREDATA ; 
 int FSSTOREDATA64 ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  afs_RXFSStoreData64_as_Status ; 
 struct afs_call* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct key*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,struct iattr*) ; 

__attribute__((used)) static int FUNC8(struct afs_server *server, struct key *key,
				 struct afs_vnode *vnode, struct iattr *attr,
				 const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	__be32 *bp;

	FUNC1(",%x,{%x:%u},,",
	       FUNC6(key), vnode->fid.vid, vnode->fid.vnode);

	FUNC0(attr->ia_valid & ATTR_SIZE);

	call = FUNC2(&afs_RXFSStoreData64_as_Status,
				   (4 + 6 + 3 * 2) * 4,
				   (21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = key;
	call->reply = vnode;
	call->service_id = FS_SERVICE;
	call->port = FUNC5(AFS_FS_PORT);
	call->store_version = vnode->status.data_version + 1;
	call->operation_ID = FSSTOREDATA;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC4(FSSTOREDATA64);
	*bp++ = FUNC4(vnode->fid.vid);
	*bp++ = FUNC4(vnode->fid.vnode);
	*bp++ = FUNC4(vnode->fid.unique);

	FUNC7(&bp, attr);

	*bp++ = 0;				/* position of start of write */
	*bp++ = 0;
	*bp++ = 0;				/* size of write */
	*bp++ = 0;
	*bp++ = FUNC4(attr->ia_size >> 32);	/* new file length */
	*bp++ = FUNC4((u32) attr->ia_size);

	return FUNC3(&server->addr, call, GFP_NOFS, wait_mode);
}