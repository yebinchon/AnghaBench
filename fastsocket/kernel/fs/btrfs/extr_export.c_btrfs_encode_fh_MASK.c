#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
struct btrfs_fid {scalar_t__ root_objectid; scalar_t__ parent_root_objectid; int /*<<< orphan*/  parent_gen; int /*<<< orphan*/  parent_objectid; int /*<<< orphan*/  gen; int /*<<< orphan*/  objectid; } ;
struct TYPE_6__ {int /*<<< orphan*/  objectid; } ;
struct TYPE_8__ {TYPE_3__* root; TYPE_2__ location; } ;
struct TYPE_7__ {scalar_t__ objectid; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int BTRFS_FID_SIZE_CONNECTABLE ; 
 int BTRFS_FID_SIZE_CONNECTABLE_ROOT ; 
 int BTRFS_FID_SIZE_NON_CONNECTABLE ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 int FILEID_BTRFS_WITHOUT_PARENT ; 
 int FILEID_BTRFS_WITH_PARENT ; 
 int FILEID_BTRFS_WITH_PARENT_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, u32 *fh, int *max_len,
			   int connectable)
{
	struct btrfs_fid *fid = (struct btrfs_fid *)fh;
	struct inode *inode = dentry->d_inode;
	int len = *max_len;
	int type;

	if (connectable && (len < BTRFS_FID_SIZE_CONNECTABLE)) {
		*max_len = BTRFS_FID_SIZE_CONNECTABLE;
		return 255;
	} else if (len < BTRFS_FID_SIZE_NON_CONNECTABLE) {
		*max_len = BTRFS_FID_SIZE_NON_CONNECTABLE;
		return 255;
	}

	len  = BTRFS_FID_SIZE_NON_CONNECTABLE;
	type = FILEID_BTRFS_WITHOUT_PARENT;

	fid->objectid = FUNC2(inode);
	fid->root_objectid = FUNC0(inode)->root->objectid;
	fid->gen = inode->i_generation;

	if (connectable && !FUNC1(inode->i_mode)) {
		struct inode *parent;
		u64 parent_root_id;

		FUNC3(&dentry->d_lock);

		parent = dentry->d_parent->d_inode;
		fid->parent_objectid = FUNC0(parent)->location.objectid;
		fid->parent_gen = parent->i_generation;
		parent_root_id = FUNC0(parent)->root->objectid;

		FUNC4(&dentry->d_lock);

		if (parent_root_id != fid->root_objectid) {
			fid->parent_root_objectid = parent_root_id;
			len = BTRFS_FID_SIZE_CONNECTABLE_ROOT;
			type = FILEID_BTRFS_WITH_PARENT_ROOT;
		} else {
			len = BTRFS_FID_SIZE_CONNECTABLE;
			type = FILEID_BTRFS_WITH_PARENT;
		}
	}

	*max_len = len;
	return type;
}