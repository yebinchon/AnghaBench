#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct super_block {int s_blocksize; TYPE_4__* s_bdev; } ;
struct inode {int i_size; int i_blkbits; int i_blocks; scalar_t__ i_version; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_11__ {int prev_pos; } ;
struct TYPE_8__ {TYPE_1__* dentry; } ;
struct file {int f_pos; scalar_t__ f_version; TYPE_5__ f_ra; TYPE_2__ f_path; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  rec_len; int /*<<< orphan*/  file_type; int /*<<< orphan*/  inode; int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_data; scalar_t__ b_state; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  int (* filldir_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ;
typedef  int ext4_lblk_t ;
struct TYPE_10__ {TYPE_3__* bd_inode; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_7__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ERR_BAD_DX_DIR ; 
 int FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  EXT4_INODE_INDEX ; 
 int PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct buffer_head* FUNC3 (int /*<<< orphan*/ *,struct inode*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct file*,void*,int (*) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,int,int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_5__*,struct file*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int) ; 

__attribute__((used)) static int FUNC15(struct file *filp,
			 void *dirent, filldir_t filldir)
{
	int error = 0;
	unsigned int offset;
	int i, stored;
	struct ext4_dir_entry_2 *de;
	int err;
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct super_block *sb = inode->i_sb;
	int ret = 0;
	int dir_has_error = 0;

	if (FUNC11(inode)) {
		err = FUNC6(filp, dirent, filldir);
		if (err != ERR_BAD_DX_DIR) {
			ret = err;
			goto out;
		}
		/*
		 * We don't set the inode dirty flag since it's not
		 * critical that it get flushed back to the disk.
		 */
		FUNC5(filp->f_path.dentry->d_inode,
				      EXT4_INODE_INDEX);
	}
	stored = 0;
	offset = filp->f_pos & (sb->s_blocksize - 1);

	while (!error && !stored && filp->f_pos < inode->i_size) {
		ext4_lblk_t blk = filp->f_pos >> FUNC0(sb);
		struct buffer_head map_bh;
		struct buffer_head *bh = NULL;

		map_bh.b_state = 0;
		err = FUNC8(NULL, inode, blk, 1, &map_bh, 0);
		if (err > 0) {
			pgoff_t index = map_bh.b_blocknr >>
					(PAGE_CACHE_SHIFT - inode->i_blkbits);
			if (!FUNC14(&filp->f_ra, index))
				FUNC13(
					sb->s_bdev->bd_inode->i_mapping,
					&filp->f_ra, filp,
					index, 1);
			filp->f_ra.prev_pos = (loff_t)index << PAGE_CACHE_SHIFT;
			bh = FUNC3(NULL, inode, blk, 0, &err);
		}

		/*
		 * We ignore I/O errors on directories so users have a chance
		 * of recovering data when there's a bad sector
		 */
		if (!bh) {
			if (!dir_has_error) {
				FUNC7(sb, "directory #%lu "
					   "contains a hole at offset %Lu",
					   inode->i_ino,
					   (unsigned long long) filp->f_pos);
				dir_has_error = 1;
			}
			/* corrupt size?  Maybe no more blocks to read */
			if (filp->f_pos > inode->i_blocks << 9)
				break;
			filp->f_pos += sb->s_blocksize - offset;
			continue;
		}

revalidate:
		/* If the dir block has changed since the last call to
		 * readdir(2), then we might be pointing to an invalid
		 * dirent right now.  Scan from the start of the block
		 * to make sure. */
		if (filp->f_version != inode->i_version) {
			for (i = 0; i < sb->s_blocksize && i < offset; ) {
				de = (struct ext4_dir_entry_2 *)
					(bh->b_data + i);
				/* It's too expensive to do a full
				 * dirent test each time round this
				 * loop, but we do have to test at
				 * least that it is non-zero.  A
				 * failure will be detected in the
				 * dirent test below. */
				if (FUNC9(de->rec_len,
					sb->s_blocksize) < FUNC1(1))
					break;
				i += FUNC9(de->rec_len,
							    sb->s_blocksize);
			}
			offset = i;
			filp->f_pos = (filp->f_pos & ~(sb->s_blocksize - 1))
				| offset;
			filp->f_version = inode->i_version;
		}

		while (!error && filp->f_pos < inode->i_size
		       && offset < sb->s_blocksize) {
			de = (struct ext4_dir_entry_2 *) (bh->b_data + offset);
			if (!FUNC4("ext4_readdir", inode, de,
						  bh, offset)) {
				/*
				 * On error, skip the f_pos to the next block
				 */
				filp->f_pos = (filp->f_pos |
						(sb->s_blocksize - 1)) + 1;
				FUNC2(bh);
				ret = stored;
				goto out;
			}
			offset += FUNC9(de->rec_len,
					sb->s_blocksize);
			if (FUNC12(de->inode)) {
				/* We might block in the next section
				 * if the data destination is
				 * currently swapped out.  So, use a
				 * version stamp to detect whether or
				 * not the directory has been modified
				 * during the copy operation.
				 */
				u64 version = filp->f_version;

				error = filldir(dirent, de->name,
						de->name_len,
						filp->f_pos,
						FUNC12(de->inode),
						FUNC10(sb, de->file_type));
				if (error)
					break;
				if (version != filp->f_version)
					goto revalidate;
				stored++;
			}
			filp->f_pos += FUNC9(de->rec_len,
						sb->s_blocksize);
		}
		offset = 0;
		FUNC2(bh);
	}
out:
	return ret;
}