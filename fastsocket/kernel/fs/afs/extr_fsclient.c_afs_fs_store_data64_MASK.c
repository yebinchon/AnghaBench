#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct afs_writeback {int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_6__ {int vid; int vnode; int unique; } ;
struct TYPE_5__ {scalar_t__ data_version; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mapping; } ;
struct afs_vnode {TYPE_3__ fid; TYPE_2__ status; TYPE_1__ vfs_inode; } ;
struct afs_server {int /*<<< orphan*/  addr; } ;
struct afs_call {unsigned int first_offset; unsigned int last_to; int send_pages; int /*<<< orphan*/ * request; scalar_t__ store_version; void* last; void* first; int /*<<< orphan*/  mapping; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_vnode* reply; int /*<<< orphan*/  key; struct afs_writeback* wb; } ;
typedef  void* pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int ENOMEM ; 
 int FSSTOREDATA64 ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  afs_RXFSStoreData64 ; 
 struct afs_call* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct afs_server *server,
			       struct afs_writeback *wb,
			       pgoff_t first, pgoff_t last,
			       unsigned offset, unsigned to,
			       loff_t size, loff_t pos, loff_t i_size,
			       const struct afs_wait_mode *wait_mode)
{
	struct afs_vnode *vnode = wb->vnode;
	struct afs_call *call;
	__be32 *bp;

	FUNC0(",%x,{%x:%u},,",
	       FUNC5(wb->key), vnode->fid.vid, vnode->fid.vnode);

	call = FUNC1(&afs_RXFSStoreData64,
				   (4 + 6 + 3 * 2) * 4,
				   (21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->wb = wb;
	call->key = wb->key;
	call->reply = vnode;
	call->service_id = FS_SERVICE;
	call->port = FUNC4(AFS_FS_PORT);
	call->mapping = vnode->vfs_inode.i_mapping;
	call->first = first;
	call->last = last;
	call->first_offset = offset;
	call->last_to = to;
	call->send_pages = true;
	call->store_version = vnode->status.data_version + 1;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC3(FSSTOREDATA64);
	*bp++ = FUNC3(vnode->fid.vid);
	*bp++ = FUNC3(vnode->fid.vnode);
	*bp++ = FUNC3(vnode->fid.unique);

	*bp++ = 0; /* mask */
	*bp++ = 0; /* mtime */
	*bp++ = 0; /* owner */
	*bp++ = 0; /* group */
	*bp++ = 0; /* unix mode */
	*bp++ = 0; /* segment size */

	*bp++ = FUNC3(pos >> 32);
	*bp++ = FUNC3((u32) pos);
	*bp++ = FUNC3(size >> 32);
	*bp++ = FUNC3((u32) size);
	*bp++ = FUNC3(i_size >> 32);
	*bp++ = FUNC3((u32) i_size);

	return FUNC2(&server->addr, call, GFP_NOFS, wait_mode);
}