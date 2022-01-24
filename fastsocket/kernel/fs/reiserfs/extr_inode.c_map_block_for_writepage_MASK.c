#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {scalar_t__ t_trans_id; } ;
struct item_head {int dummy; } ;
struct inode {int i_size; int i_ino; TYPE_1__* i_sb; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {int b_size; scalar_t__ b_blocknr; int /*<<< orphan*/  b_page; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_21__ {int pos_in_item; } ;
struct TYPE_20__ {int s_blocksize_bits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*,struct item_head*) ; 
 int EIO ; 
 int GET_BLOCK_CREATE ; 
 int GET_BLOCK_NO_DANGLE ; 
 int GET_BLOCK_NO_IMUX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int PAGE_CACHE_SIZE ; 
 int POSITION_FOUND ; 
 int /*<<< orphan*/  TYPE_ANY ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct item_head*,struct item_head*) ; 
 scalar_t__ FUNC6 (struct cpu_key*) ; 
 scalar_t__ FUNC7 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (TYPE_1__*) ; 
 struct item_head* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*) ; 
 struct buffer_head* FUNC12 (TYPE_2__*) ; 
 int FUNC13 (struct item_head*) ; 
 scalar_t__ FUNC14 (int,struct item_head*) ; 
 scalar_t__ FUNC15 (struct item_head*) ; 
 scalar_t__ FUNC16 (struct item_head*,TYPE_2__*) ; 
 int FUNC17 (struct reiserfs_transaction_handle*,TYPE_1__*,int) ; 
 int FUNC18 (struct reiserfs_transaction_handle*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct reiserfs_transaction_handle*,TYPE_1__*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC23 (struct cpu_key*,struct inode*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,char*,int) ; 
 char* FUNC25 (int /*<<< orphan*/ ) ; 
 TYPE_2__ path ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int FUNC27 (struct inode*,unsigned long,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*) ; 
 int FUNC34 (TYPE_1__*,struct cpu_key*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC35 (struct buffer_head*,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC36 (struct cpu_key*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC38(struct inode *inode,
				   struct buffer_head *bh_result,
				   unsigned long block)
{
	struct reiserfs_transaction_handle th;
	int fs_gen;
	struct item_head tmp_ih;
	struct item_head *ih;
	struct buffer_head *bh;
	__le32 *item;
	struct cpu_key key;
	FUNC1(path);
	int pos_in_item;
	int jbegin_count = JOURNAL_PER_BALANCE_CNT;
	loff_t byte_offset = ((loff_t)block << inode->i_sb->s_blocksize_bits)+1;
	int retval;
	int use_get_block = 0;
	int bytes_copied = 0;
	int copy_size;
	int trans_running = 0;

	/* catch places below that try to log something without starting a trans */
	th.t_trans_id = 0;

	if (!FUNC3(bh_result)) {
		return -EIO;
	}

	FUNC20(bh_result->b_page);
      start_over:
	FUNC32(inode->i_sb);
	FUNC23(&key, inode, byte_offset, TYPE_ANY, 3);

      research:
	retval = FUNC34(inode->i_sb, &key, &path);
	if (retval != POSITION_FOUND) {
		use_get_block = 1;
		goto out;
	}

	bh = FUNC12(&path);
	ih = FUNC10(&path);
	item = FUNC11(&path);
	pos_in_item = path.pos_in_item;

	/* we've found an unformatted node */
	if (FUNC14(retval, ih)) {
		if (bytes_copied > 0) {
			FUNC31(inode->i_sb, "clm-6002",
					 "bytes_copied %d", bytes_copied);
		}
		if (!FUNC8(item, pos_in_item)) {
			/* crap, we are writing to a hole */
			use_get_block = 1;
			goto out;
		}
		FUNC35(bh_result,
				     FUNC8(item, pos_in_item), inode);
	} else if (FUNC15(ih)) {
		char *p;
		p = FUNC25(bh_result->b_page);
		p += (byte_offset - 1) & (PAGE_CACHE_SIZE - 1);
		copy_size = FUNC13(ih) - pos_in_item;

		fs_gen = FUNC9(inode->i_sb);
		FUNC5(&tmp_ih, ih);

		if (!trans_running) {
			/* vs-3050 is gone, no need to drop the path */
			retval = FUNC17(&th, inode->i_sb, jbegin_count);
			if (retval)
				goto out;
			FUNC30(inode);
			trans_running = 1;
			if (FUNC7(fs_gen, inode->i_sb)
			    && FUNC16(&tmp_ih, &path)) {
				FUNC29(inode->i_sb,
								 bh);
				goto research;
			}
		}

		FUNC28(inode->i_sb, bh, 1);

		if (FUNC7(fs_gen, inode->i_sb)
		    && FUNC16(&tmp_ih, &path)) {
			FUNC29(inode->i_sb, bh);
			goto research;
		}

		FUNC24(FUNC0(bh, ih) + pos_in_item, p + bytes_copied,
		       copy_size);

		FUNC19(&th, inode->i_sb, bh);
		bytes_copied += copy_size;
		FUNC35(bh_result, 0, inode);

		/* are there still bytes left? */
		if (bytes_copied < bh_result->b_size &&
		    (byte_offset + bytes_copied) < inode->i_size) {
			FUNC36(&key,
					     FUNC6(&key) +
					     copy_size);
			goto research;
		}
	} else {
		FUNC31(inode->i_sb, "clm-6003",
				 "bad item inode %lu", inode->i_ino);
		retval = -EIO;
		goto out;
	}
	retval = 0;

      out:
	FUNC26(&path);
	if (trans_running) {
		int err = FUNC18(&th, inode->i_sb, jbegin_count);
		if (err)
			retval = err;
		trans_running = 0;
	}
	FUNC33(inode->i_sb);

	/* this is where we fill in holes in the file. */
	if (use_get_block) {
		retval = FUNC27(inode, block, bh_result,
					    GET_BLOCK_CREATE | GET_BLOCK_NO_IMUX
					    | GET_BLOCK_NO_DANGLE);
		if (!retval) {
			if (!FUNC2(bh_result)
			    || bh_result->b_blocknr == 0) {
				/* get_block failed to find a mapped unformatted node. */
				use_get_block = 0;
				goto start_over;
			}
		}
	}
	FUNC21(bh_result->b_page);

	if (!retval && FUNC2(bh_result) && bh_result->b_blocknr == 0) {
		/* we've copied data from the page into the direct item, so the
		 * buffer in the page is now clean, mark it to reflect that.
		 */
		FUNC22(bh_result);
		FUNC4(bh_result);
		FUNC37(bh_result);
	}
	return retval;
}