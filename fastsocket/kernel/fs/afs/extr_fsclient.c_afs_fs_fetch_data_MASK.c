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
struct page {int dummy; } ;
struct key {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_2__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int /*<<< orphan*/  addr; } ;
struct afs_call {size_t operation_ID; int /*<<< orphan*/ * request; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct page* reply3; int /*<<< orphan*/ * reply2; struct afs_vnode* reply; struct key* key; } ;
typedef  size_t off_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int ENOMEM ; 
 size_t FSFETCHDATA ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSFetchData ; 
 struct afs_call* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (struct afs_server*,struct key*,struct afs_vnode*,size_t,size_t,struct page*,struct afs_wait_mode const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (size_t) ; 

int FUNC7(struct afs_server *server,
		      struct key *key,
		      struct afs_vnode *vnode,
		      off_t offset, size_t length,
		      struct page *buffer,
		      const struct afs_wait_mode *wait_mode)
{
	struct afs_call *call;
	__be32 *bp;

	if (FUNC6(offset) || FUNC6(offset + length))
		return FUNC2(server, key, vnode, offset, length,
					   buffer, wait_mode);

	FUNC0("");

	call = FUNC1(&afs_RXFSFetchData, 24, (21 + 3 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = key;
	call->reply = vnode;
	call->reply2 = NULL; /* volsync */
	call->reply3 = buffer;
	call->service_id = FS_SERVICE;
	call->port = FUNC5(AFS_FS_PORT);
	call->operation_ID = FSFETCHDATA;

	/* marshall the parameters */
	bp = call->request;
	bp[0] = FUNC4(FSFETCHDATA);
	bp[1] = FUNC4(vnode->fid.vid);
	bp[2] = FUNC4(vnode->fid.vnode);
	bp[3] = FUNC4(vnode->fid.unique);
	bp[4] = FUNC4(offset);
	bp[5] = FUNC4(length);

	return FUNC3(&server->addr, call, GFP_NOFS, wait_mode);
}