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
struct TYPE_7__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_5__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_version; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_inode_item {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  generation; int /*<<< orphan*/  disk_i_size; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 

__attribute__((used)) static void FUNC19(struct btrfs_trans_handle *trans,
			    struct extent_buffer *leaf,
			    struct btrfs_inode_item *item,
			    struct inode *inode)
{
	FUNC15(leaf, item, inode->i_uid);
	FUNC7(leaf, item, inode->i_gid);
	FUNC13(leaf, item, FUNC0(inode)->disk_i_size);
	FUNC8(leaf, item, inode->i_mode);
	FUNC10(leaf, item, inode->i_nlink);

	FUNC17(leaf, FUNC1(item),
			       inode->i_atime.tv_sec);
	FUNC16(leaf, FUNC1(item),
				inode->i_atime.tv_nsec);

	FUNC17(leaf, FUNC3(item),
			       inode->i_mtime.tv_sec);
	FUNC16(leaf, FUNC3(item),
				inode->i_mtime.tv_nsec);

	FUNC17(leaf, FUNC2(item),
			       inode->i_ctime.tv_sec);
	FUNC16(leaf, FUNC2(item),
				inode->i_ctime.tv_nsec);

	FUNC9(leaf, item, FUNC18(inode));
	FUNC6(leaf, item, FUNC0(inode)->generation);
	FUNC12(leaf, item, inode->i_version);
	FUNC14(leaf, item, trans->transid);
	FUNC11(leaf, item, inode->i_rdev);
	FUNC5(leaf, item, FUNC0(inode)->flags);
	FUNC4(leaf, item, 0);
}