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
struct afs_writeback {int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_5__ {int vid; int vnode; int unique; } ;
struct TYPE_4__ {scalar_t__ data_version; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mapping; } ;
struct afs_vnode {TYPE_2__ fid; TYPE_1__ status; TYPE_3__ vfs_inode; } ;
struct afs_server {int /*<<< orphan*/  addr; } ;
struct afs_call {unsigned int first_offset; unsigned int last_to; int send_pages; int /*<<< orphan*/ * request; scalar_t__ store_version; scalar_t__ last; scalar_t__ first; int /*<<< orphan*/  mapping; int /*<<< orphan*/  port; int /*<<< orphan*/  service_id; struct afs_vnode* reply; int /*<<< orphan*/  key; struct afs_writeback* wb; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_FS_PORT ; 
 int ENOMEM ; 
 int FSSTOREDATA ; 
 int /*<<< orphan*/  FS_SERVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  afs_RXFSStoreData ; 
 struct afs_call* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (struct afs_server*,struct afs_writeback*,scalar_t__,scalar_t__,unsigned int,unsigned int,int,int,int,struct afs_wait_mode const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ,struct afs_wait_mode const*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct afs_server *server, struct afs_writeback *wb,
		      pgoff_t first, pgoff_t last,
		      unsigned offset, unsigned to,
		      const struct afs_wait_mode *wait_mode)
{
	struct afs_vnode *vnode = wb->vnode;
	struct afs_call *call;
	loff_t size, pos, i_size;
	__be32 *bp;

	FUNC1(",%x,{%x:%u},,",
	       FUNC8(wb->key), vnode->fid.vid, vnode->fid.vnode);

	size = to - offset;
	if (first != last)
		size += (loff_t)(last - first) << PAGE_SHIFT;
	pos = (loff_t)first << PAGE_SHIFT;
	pos += offset;

	i_size = FUNC7(&vnode->vfs_inode);
	if (pos + size > i_size)
		i_size = size + pos;

	FUNC0("size %llx, at %llx, i_size %llx",
	       (unsigned long long) size, (unsigned long long) pos,
	       (unsigned long long) i_size);

	if (pos >> 32 || i_size >> 32 || size >> 32 || (pos + size) >> 32)
		return FUNC3(server, wb, first, last, offset, to,
					   size, pos, i_size, wait_mode);

	call = FUNC2(&afs_RXFSStoreData,
				   (4 + 6 + 3) * 4,
				   (21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->wb = wb;
	call->key = wb->key;
	call->reply = vnode;
	call->service_id = FS_SERVICE;
	call->port = FUNC6(AFS_FS_PORT);
	call->mapping = vnode->vfs_inode.i_mapping;
	call->first = first;
	call->last = last;
	call->first_offset = offset;
	call->last_to = to;
	call->send_pages = true;
	call->store_version = vnode->status.data_version + 1;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC5(FSSTOREDATA);
	*bp++ = FUNC5(vnode->fid.vid);
	*bp++ = FUNC5(vnode->fid.vnode);
	*bp++ = FUNC5(vnode->fid.unique);

	*bp++ = 0; /* mask */
	*bp++ = 0; /* mtime */
	*bp++ = 0; /* owner */
	*bp++ = 0; /* group */
	*bp++ = 0; /* unix mode */
	*bp++ = 0; /* segment size */

	*bp++ = FUNC5(pos);
	*bp++ = FUNC5(size);
	*bp++ = FUNC5(i_size);

	return FUNC4(&server->addr, call, GFP_NOFS, wait_mode);
}