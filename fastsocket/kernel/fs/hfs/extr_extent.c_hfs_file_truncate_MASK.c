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
typedef  void* u16 ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct page {int dummy; } ;
struct inode {int i_size; struct address_space* i_mapping; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {int phys_size; void* first_blocks; int flags; int fs_blocks; void* alloc_blocks; int /*<<< orphan*/  extents_lock; void* cached_blocks; void* cached_start; int /*<<< orphan*/  cached_extents; int /*<<< orphan*/  first_extents; } ;
struct TYPE_3__ {int alloc_blksz; int /*<<< orphan*/  ext_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  DBG_INODE ; 
 int HFS_FLG_EXT_DIRTY ; 
 int HFS_FLG_EXT_NEW ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int FUNC2 (struct hfs_find_data*,struct inode*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,long long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct address_space*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page**,void**) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct address_space*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page*,void*) ; 

void FUNC15(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	struct hfs_find_data fd;
	u16 blk_cnt, alloc_cnt, start;
	u32 size;
	int res;

	FUNC3(DBG_INODE, "truncate: %lu, %Lu -> %Lu\n", inode->i_ino,
	       (long long)FUNC0(inode)->phys_size, inode->i_size);
	if (inode->i_size > FUNC0(inode)->phys_size) {
		struct address_space *mapping = inode->i_mapping;
		void *fsdata;
		struct page *page;
		int res;

		/* XXX: Can use generic_cont_expand? */
		size = inode->i_size - 1;
		res = FUNC13(NULL, mapping, size+1, 0,
				AOP_FLAG_UNINTERRUPTIBLE, &page, &fsdata);
		if (!res) {
			res = FUNC14(NULL, mapping, size+1, 0, 0,
					page, fsdata);
		}
		if (res)
			inode->i_size = FUNC0(inode)->phys_size;
		return;
	} else if (inode->i_size == FUNC0(inode)->phys_size)
		return;
	size = inode->i_size + FUNC1(sb)->alloc_blksz - 1;
	blk_cnt = size / FUNC1(sb)->alloc_blksz;
	alloc_cnt = FUNC0(inode)->alloc_blocks;
	if (blk_cnt == alloc_cnt)
		goto out;

	FUNC11(&FUNC0(inode)->extents_lock);
	FUNC7(FUNC1(sb)->ext_tree, &fd);
	while (1) {
		if (alloc_cnt == FUNC0(inode)->first_blocks) {
			FUNC8(sb, FUNC0(inode)->first_extents,
					 alloc_cnt, alloc_cnt - blk_cnt);
			FUNC5(FUNC0(inode)->first_extents);
			FUNC0(inode)->first_blocks = blk_cnt;
			break;
		}
		res = FUNC2(&fd, inode, alloc_cnt);
		if (res)
			break;
		start = FUNC0(inode)->cached_start;
		FUNC8(sb, FUNC0(inode)->cached_extents,
				 alloc_cnt - start, alloc_cnt - blk_cnt);
		FUNC5(FUNC0(inode)->cached_extents);
		if (blk_cnt > start) {
			FUNC0(inode)->flags |= HFS_FLG_EXT_DIRTY;
			break;
		}
		alloc_cnt = start;
		FUNC0(inode)->cached_start = FUNC0(inode)->cached_blocks = 0;
		FUNC0(inode)->flags &= ~(HFS_FLG_EXT_DIRTY|HFS_FLG_EXT_NEW);
		FUNC4(&fd);
	}
	FUNC6(&fd);
	FUNC12(&FUNC0(inode)->extents_lock);

	FUNC0(inode)->alloc_blocks = blk_cnt;
out:
	FUNC0(inode)->phys_size = inode->i_size;
	FUNC0(inode)->fs_blocks = (inode->i_size + sb->s_blocksize - 1) >> sb->s_blocksize_bits;
	FUNC9(inode, FUNC0(inode)->fs_blocks << sb->s_blocksize_bits);
	FUNC10(inode);
}