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
typedef  scalar_t__ u64 ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_ctime; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ offset; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; struct btrfs_root* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FILE_EXTENT_PREALLOC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_PREALLOC ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int FALLOC_FL_KEEP_SIZE ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,struct btrfs_key*,int) ; 
 struct btrfs_trans_handle* FUNC8 (struct btrfs_root*,int) ; 
 int FUNC9 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct btrfs_trans_handle*,struct inode*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, int mode,
				       u64 start, u64 num_bytes, u64 min_size,
				       loff_t actual_len, u64 *alloc_hint,
				       struct btrfs_trans_handle *trans)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_key ins;
	u64 cur_offset = start;
	u64 i_size;
	int ret = 0;
	bool own_trans = true;

	if (trans)
		own_trans = false;
	while (num_bytes > 0) {
		if (own_trans) {
			trans = FUNC8(root, 3);
			if (FUNC1(trans)) {
				ret = FUNC2(trans);
				break;
			}
		}

		ret = FUNC7(trans, root, num_bytes, min_size,
					   0, *alloc_hint, &ins, 1);
		if (ret) {
			if (own_trans)
				FUNC5(trans, root);
			break;
		}

		ret = FUNC12(trans, inode,
						  cur_offset, ins.objectid,
						  ins.offset, ins.offset,
						  ins.offset, 0, 0, 0,
						  BTRFS_FILE_EXTENT_PREALLOC);
		if (ret) {
			FUNC3(trans, root, ret);
			if (own_trans)
				FUNC5(trans, root);
			break;
		}
		FUNC4(inode, cur_offset,
					cur_offset + ins.offset -1, 0);

		num_bytes -= ins.offset;
		cur_offset += ins.offset;
		*alloc_hint = ins.objectid + ins.offset;

		FUNC11(inode);
		inode->i_ctime = CURRENT_TIME;
		FUNC0(inode)->flags |= BTRFS_INODE_PREALLOC;
		if (!(mode & FALLOC_FL_KEEP_SIZE) &&
		    (actual_len > inode->i_size) &&
		    (cur_offset > inode->i_size)) {
			if (cur_offset > actual_len)
				i_size = actual_len;
			else
				i_size = cur_offset;
			FUNC10(inode, i_size);
			FUNC6(inode, i_size, NULL);
		}

		ret = FUNC9(trans, root, inode);

		if (ret) {
			FUNC3(trans, root, ret);
			if (own_trans)
				FUNC5(trans, root);
			break;
		}

		if (own_trans)
			FUNC5(trans, root);
	}
	return ret;
}