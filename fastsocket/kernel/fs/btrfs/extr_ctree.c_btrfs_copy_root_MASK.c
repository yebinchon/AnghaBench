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
typedef  int /*<<< orphan*/  u64 ;
struct extent_buffer {int /*<<< orphan*/  start; int /*<<< orphan*/  len; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_root {TYPE_2__* fs_info; int /*<<< orphan*/  last_trans; scalar_t__ ref_cows; } ;
struct btrfs_disk_key {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fsid; TYPE_1__* running_transaction; } ;
struct TYPE_3__ {int /*<<< orphan*/  transid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FSID_SIZE ; 
 int BTRFS_HEADER_FLAG_RELOC ; 
 int BTRFS_HEADER_FLAG_WRITTEN ; 
 int /*<<< orphan*/  BTRFS_MIXED_BACKREF_REV ; 
 int /*<<< orphan*/  BTRFS_TREE_RELOC_OBJECTID ; 
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct extent_buffer* FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_disk_key*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 int FUNC7 (struct extent_buffer*) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,struct btrfs_disk_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*,struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct extent_buffer*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

int FUNC19(struct btrfs_trans_handle *trans,
		      struct btrfs_root *root,
		      struct extent_buffer *buf,
		      struct extent_buffer **cow_ret, u64 new_root_objectid)
{
	struct extent_buffer *cow;
	int ret = 0;
	int level;
	struct btrfs_disk_key disk_key;

	FUNC2(root->ref_cows && trans->transid !=
		root->fs_info->running_transaction->transid);
	FUNC2(root->ref_cows && trans->transid != root->last_trans);

	level = FUNC7(buf);
	if (level == 0)
		FUNC9(buf, &disk_key, 0);
	else
		FUNC11(buf, &disk_key, 0);

	cow = FUNC3(trans, root, buf->len, 0,
				     new_root_objectid, &disk_key, level,
				     buf->start, 0);
	if (FUNC0(cow))
		return FUNC1(cow);

	FUNC17(cow, buf, 0, 0, cow->len);
	FUNC13(cow, cow->start);
	FUNC15(cow, trans->transid);
	FUNC12(cow, BTRFS_MIXED_BACKREF_REV);
	FUNC4(cow, BTRFS_HEADER_FLAG_WRITTEN |
				     BTRFS_HEADER_FLAG_RELOC);
	if (new_root_objectid == BTRFS_TREE_RELOC_OBJECTID)
		FUNC14(cow, BTRFS_HEADER_FLAG_RELOC);
	else
		FUNC16(cow, new_root_objectid);

	FUNC18(cow, root->fs_info->fsid,
			    (unsigned long)FUNC5(cow),
			    BTRFS_FSID_SIZE);

	FUNC2(FUNC6(buf) > trans->transid);
	if (new_root_objectid == BTRFS_TREE_RELOC_OBJECTID)
		ret = FUNC8(trans, root, cow, 1, 1);
	else
		ret = FUNC8(trans, root, cow, 0, 1);

	if (ret)
		return ret;

	FUNC10(cow);
	*cow_ret = cow;
	return 0;
}