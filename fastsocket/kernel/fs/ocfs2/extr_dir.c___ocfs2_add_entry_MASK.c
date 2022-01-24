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
typedef  scalar_t__ u64 ;
struct super_block {unsigned int s_blocksize; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_prev_leaf_bh; struct buffer_head* dl_dx_root_bh; struct buffer_head* dl_leaf_bh; } ;
struct ocfs2_dir_entry {int name_len; void* rec_len; int /*<<< orphan*/  name; scalar_t__ inode; int /*<<< orphan*/  file_type; } ;
struct TYPE_4__ {char* id_data; } ;
struct TYPE_5__ {TYPE_1__ i_data; } ;
struct ocfs2_dinode {TYPE_2__ id2; } ;
struct inode {int /*<<< orphan*/  i_version; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; struct super_block* i_sb; } ;
struct buffer_head {char* b_data; scalar_t__ b_blocknr; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int ip_dyn_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  OCFS2_FT_UNKNOWN ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 unsigned int FUNC6 (struct inode*) ; 
 int FUNC7 (void*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,char const*,int,unsigned long long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct ocfs2_dir_entry*,struct buffer_head*,unsigned long) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*) ; 
 scalar_t__ FUNC17 (struct ocfs2_dir_entry*,unsigned short) ; 
 int FUNC18 (struct inode*,int /*<<< orphan*/ *,struct ocfs2_dir_lookup_result*) ; 
 scalar_t__ FUNC19 (struct ocfs2_dir_lookup_result*) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC24 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC25 (int,char const*,struct ocfs2_dir_entry*) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,int /*<<< orphan*/ *,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC27 (struct ocfs2_dir_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,struct ocfs2_dir_entry*,unsigned long,unsigned int) ; 

int FUNC29(handle_t *handle,
		      struct inode *dir,
		      const char *name, int namelen,
		      struct inode *inode, u64 blkno,
		      struct buffer_head *parent_fe_bh,
		      struct ocfs2_dir_lookup_result *lookup)
{
	unsigned long offset;
	unsigned short rec_len;
	struct ocfs2_dir_entry *de, *de1;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)parent_fe_bh->b_data;
	struct super_block *sb = dir->i_sb;
	int retval, status;
	unsigned int size = sb->s_blocksize;
	struct buffer_head *insert_bh = lookup->dl_leaf_bh;
	char *data_start = insert_bh->b_data;

	FUNC11();

	if (!namelen)
		return -EINVAL;

	if (FUNC15(dir)) {
		struct buffer_head *bh;

		/*
		 * An indexed dir may require that we update the free space
		 * list. Reserve a write to the previous node in the list so
		 * that we don't fail later.
		 *
		 * XXX: This can be either a dx_root_block, or an unindexed
		 * directory tree leaf block.
		 */
		if (FUNC19(lookup)) {
			bh = lookup->dl_dx_root_bh;
			retval = FUNC22(handle,
						 FUNC1(dir), bh,
						 OCFS2_JOURNAL_ACCESS_WRITE);
		} else {
			bh = lookup->dl_prev_leaf_bh;
			retval = FUNC20(handle,
						 FUNC1(dir), bh,
						 OCFS2_JOURNAL_ACCESS_WRITE);
		}
		if (retval) {
			FUNC12(retval);
			return retval;
		}
	} else if (FUNC3(dir)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		data_start = di->id2.i_data.id_data;
		size = FUNC6(dir);

		FUNC0(insert_bh != parent_fe_bh);
	}

	rec_len = FUNC2(namelen);
	offset = 0;
	de = (struct ocfs2_dir_entry *) data_start;
	while (1) {
		FUNC0((char *)de >= (size + data_start));

		/* These checks should've already been passed by the
		 * prepare function, but I guess we can leave them
		 * here anyway. */
		if (!FUNC14(dir, de, insert_bh, offset)) {
			retval = -ENOENT;
			goto bail;
		}
		if (FUNC25(namelen, name, de)) {
			retval = -EEXIST;
			goto bail;
		}

		/* We're guaranteed that we should have space, so we
		 * can't possibly have hit the trailer...right? */
		FUNC10(FUNC28(dir, de, offset, size),
				"Hit dir trailer trying to insert %.*s "
			        "(namelen %d) into directory %llu.  "
				"offset is %lu, trailer offset is %d\n",
				namelen, name, namelen,
				(unsigned long long)parent_fe_bh->b_blocknr,
				offset, FUNC16(dir->i_sb));

		if (FUNC17(de, rec_len)) {
			dir->i_mtime = dir->i_ctime = CURRENT_TIME;
			retval = FUNC24(handle, dir, parent_fe_bh);
			if (retval < 0) {
				FUNC12(retval);
				goto bail;
			}

			if (insert_bh == parent_fe_bh)
				status = FUNC21(handle,
								 FUNC1(dir),
								 insert_bh,
								 OCFS2_JOURNAL_ACCESS_WRITE);
			else {
				status = FUNC20(handle,
								 FUNC1(dir),
								 insert_bh,
					      OCFS2_JOURNAL_ACCESS_WRITE);

				if (FUNC15(dir)) {
					status = FUNC18(dir,
								handle,
								lookup);
					if (status) {
						FUNC12(status);
						goto bail;
					}
				}
			}

			/* By now the buffer is marked for journaling */
			offset += FUNC7(de->rec_len);
			if (FUNC8(de->inode)) {
				de1 = (struct ocfs2_dir_entry *)((char *) de +
					FUNC2(de->name_len));
				de1->rec_len =
					FUNC4(FUNC7(de->rec_len) -
					FUNC2(de->name_len));
				de->rec_len = FUNC4(FUNC2(de->name_len));
				de = de1;
			}
			de->file_type = OCFS2_FT_UNKNOWN;
			if (blkno) {
				de->inode = FUNC5(blkno);
				FUNC27(de, inode->i_mode);
			} else
				de->inode = 0;
			de->name_len = namelen;
			FUNC9(de->name, name, namelen);

			if (FUNC15(dir))
				FUNC26(dir, handle, lookup);

			dir->i_version++;
			status = FUNC23(handle, insert_bh);
			retval = 0;
			goto bail;
		}

		offset += FUNC7(de->rec_len);
		de = (struct ocfs2_dir_entry *) ((char *) de + FUNC7(de->rec_len));
	}

	/* when you think about it, the assert above should prevent us
	 * from ever getting here. */
	retval = -ENOSPC;
bail:

	FUNC13(retval);
	return retval;
}