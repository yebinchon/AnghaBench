#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {size_t s_blocksize; size_t s_blocksize_bits; } ;
struct ocfs2_mem_dqinfo {int /*<<< orphan*/  dqi_gqi_bh; struct inode* dqi_gqinode; } ;
struct mem_dqinfo {struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct inode {size_t i_size; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_version; } ;
struct buffer_head {int /*<<< orphan*/  b_page; scalar_t__ b_data; } ;
typedef  int ssize_t ;
typedef  size_t sector_t ;
typedef  size_t loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  I_MUTEX_QUOTA ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_JOURNAL_ACCESS_CREATE ; 
 int OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_QBLK_RESERVED_SPACE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 size_t FUNC12 (struct super_block*,size_t) ; 
 int FUNC13 (struct inode*,size_t,struct buffer_head**) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct inode*,size_t,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC19 (struct inode*,int /*<<< orphan*/ ,size_t) ; 
 struct mem_dqinfo* FUNC20 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 

ssize_t FUNC23(struct super_block *sb, int type,
			  const char *data, size_t len, loff_t off)
{
	struct mem_dqinfo *info = FUNC20(sb, type);
	struct ocfs2_mem_dqinfo *oinfo = info->dqi_priv;
	struct inode *gqinode = oinfo->dqi_gqinode;
	int offset = off & (sb->s_blocksize - 1);
	sector_t blk = off >> sb->s_blocksize_bits;
	int err = 0, new = 0, ja_type;
	struct buffer_head *bh = NULL;
	handle_t *handle = FUNC4();

	if (!handle) {
		FUNC8(ML_ERROR, "Quota write (off=%llu, len=%llu) cancelled "
		     "because transaction was not started.\n",
		     (unsigned long long)off, (unsigned long long)len);
		return -EIO;
	}
	if (len > sb->s_blocksize - OCFS2_QBLK_RESERVED_SPACE - offset) {
		FUNC1(1);
		len = sb->s_blocksize - OCFS2_QBLK_RESERVED_SPACE - offset;
	}

	FUNC10(&gqinode->i_mutex, I_MUTEX_QUOTA);
	if (gqinode->i_size < off + len) {
		loff_t rounded_end =
				FUNC12(sb, off + len);

		/* Space is already allocated in ocfs2_global_read_dquot() */
		err = FUNC19(gqinode,
					       oinfo->dqi_gqi_bh,
					       rounded_end);
		if (err < 0)
			goto out;
		new = 1;
	}
	/* Not rewriting whole block? */
	if ((offset || len < sb->s_blocksize - OCFS2_QBLK_RESERVED_SPACE) &&
	    !new) {
		err = FUNC17(gqinode, blk, &bh);
		ja_type = OCFS2_JOURNAL_ACCESS_WRITE;
	} else {
		err = FUNC13(gqinode, blk, &bh);
		ja_type = OCFS2_JOURNAL_ACCESS_CREATE;
	}
	if (err) {
		FUNC9(err);
		goto out;
	}
	FUNC5(bh);
	if (new)
		FUNC7(bh->b_data, 0, sb->s_blocksize);
	FUNC6(bh->b_data + offset, data, len);
	FUNC3(bh->b_page);
	FUNC21(bh);
	FUNC22(bh);
	FUNC18(FUNC0(gqinode), bh);
	err = FUNC14(handle, FUNC0(gqinode), bh,
				      ja_type);
	if (err < 0) {
		FUNC2(bh);
		goto out;
	}
	err = FUNC15(handle, bh);
	FUNC2(bh);
	if (err < 0)
		goto out;
out:
	if (err) {
		FUNC11(&gqinode->i_mutex);
		FUNC9(err);
		return err;
	}
	gqinode->i_version++;
	FUNC16(handle, gqinode, oinfo->dqi_gqi_bh);
	FUNC11(&gqinode->i_mutex);
	return len;
}