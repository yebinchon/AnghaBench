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
struct TYPE_7__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {void* tv_nsec; void* tv_sec; } ;
struct inode {int /*<<< orphan*/  i_generation; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; scalar_t__ i_rdev; int /*<<< orphan*/  i_version; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct btrfs_timespec {int dummy; } ;
struct btrfs_inode_item {int dummy; } ;
struct btrfs_delayed_node {int /*<<< orphan*/  mutex; struct btrfs_inode_item inode_item; int /*<<< orphan*/  inode_dirty; } ;
struct TYPE_8__ {scalar_t__ index_cnt; int /*<<< orphan*/  generation; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int ENOENT ; 
 struct btrfs_delayed_node* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 struct btrfs_timespec* FUNC3 (struct btrfs_inode_item*) ; 
 struct btrfs_timespec* FUNC4 (struct btrfs_inode_item*) ; 
 struct btrfs_timespec* FUNC5 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_inode_item*) ; 
 void* FUNC17 (struct btrfs_timespec*) ; 
 void* FUNC18 (struct btrfs_timespec*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct inode *inode, u32 *rdev)
{
	struct btrfs_delayed_node *delayed_node;
	struct btrfs_inode_item *inode_item;
	struct btrfs_timespec *tspec;

	delayed_node = FUNC1(inode);
	if (!delayed_node)
		return -ENOENT;

	FUNC20(&delayed_node->mutex);
	if (!delayed_node->inode_dirty) {
		FUNC21(&delayed_node->mutex);
		FUNC6(delayed_node);
		return -ENOENT;
	}

	inode_item = &delayed_node->inode_item;

	inode->i_uid = FUNC16(inode_item);
	inode->i_gid = FUNC9(inode_item);
	FUNC2(inode, FUNC15(inode_item));
	inode->i_mode = FUNC10(inode_item);
	inode->i_nlink = FUNC12(inode_item);
	FUNC19(inode, FUNC11(inode_item));
	FUNC0(inode)->generation = FUNC8(inode_item);
	inode->i_version = FUNC14(inode_item);
	inode->i_rdev = 0;
	*rdev = FUNC13(inode_item);
	FUNC0(inode)->flags = FUNC7(inode_item);

	tspec = FUNC3(inode_item);
	inode->i_atime.tv_sec = FUNC18(tspec);
	inode->i_atime.tv_nsec = FUNC17(tspec);

	tspec = FUNC5(inode_item);
	inode->i_mtime.tv_sec = FUNC18(tspec);
	inode->i_mtime.tv_nsec = FUNC17(tspec);

	tspec = FUNC4(inode_item);
	inode->i_ctime.tv_sec = FUNC18(tspec);
	inode->i_ctime.tv_nsec = FUNC17(tspec);

	inode->i_generation = FUNC0(inode)->generation;
	FUNC0(inode)->index_cnt = (u64)-1;

	FUNC21(&delayed_node->mutex);
	FUNC6(delayed_node);
	return 0;
}