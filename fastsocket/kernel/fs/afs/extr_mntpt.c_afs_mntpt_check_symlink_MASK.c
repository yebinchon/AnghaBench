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
struct page {int dummy; } ;
struct key {int dummy; } ;
struct file {struct key* private_data; } ;
struct TYPE_5__ {size_t size; } ;
struct TYPE_4__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; TYPE_2__ status; TYPE_1__ fid; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_VNODE_MOUNTPOINT ; 
 TYPE_3__* FUNC0 (struct afs_vnode*) ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 char* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 struct page* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct afs_vnode *vnode, struct key *key)
{
	struct file file = {
		.private_data = key,
	};
	struct page *page;
	size_t size;
	char *buf;
	int ret;

	FUNC5("{%x:%u,%u}",
	       vnode->fid.vid, vnode->fid.vnode, vnode->fid.unique);

	/* read the contents of the symlink into the pagecache */
	page = FUNC10(FUNC0(vnode)->i_mapping, 0, &file);
	if (FUNC1(page)) {
		ret = FUNC2(page);
		goto out;
	}

	ret = -EIO;
	if (FUNC3(page))
		goto out_free;

	buf = FUNC7(page);

	/* examine the symlink's contents */
	size = vnode->status.size;
	FUNC4("symlink to %*.*s", (int) size, (int) size, buf);

	if (size > 2 &&
	    (buf[0] == '%' || buf[0] == '#') &&
	    buf[size - 1] == '.'
	    ) {
		FUNC4("symlink is a mountpoint");
		FUNC12(&vnode->lock);
		FUNC11(AFS_VNODE_MOUNTPOINT, &vnode->flags);
		FUNC13(&vnode->lock);
	}

	ret = 0;

	FUNC8(page);
out_free:
	FUNC9(page);
out:
	FUNC6(" = %d", ret);
	return ret;
}