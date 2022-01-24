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
struct treepath {int dummy; } ;
struct tree_balance {int* insert_size; int /*<<< orphan*/  tb_path; } ;
struct super_block {int s_blocksize; } ;
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; } ;
struct page {int dummy; } ;
struct item_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_uid; struct super_block* i_sb; int /*<<< orphan*/  i_mode; } ;
struct cpu_key {int key_length; } ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_first_direct_byte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CARRY_ON ; 
 int EIO ; 
 int ENOENT ; 
 int IO_ERROR ; 
 char M_CONVERT ; 
 char M_CUT ; 
 char M_DELETE ; 
 char M_INSERT ; 
 char M_PASTE ; 
 char M_SKIP_BALANCING ; 
 int NO_DISK_SPACE ; 
 scalar_t__ FUNC1 (struct treepath*) ; 
 struct item_head* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct treepath*) ; 
 int POSITION_FOUND ; 
 int POSITION_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REISERFS_DEBUG_CODE ; 
 TYPE_1__* FUNC5 (struct inode*) ; 
 int REPEAT_SEARCH ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_INDIRECT ; 
 int /*<<< orphan*/  U32_MAX ; 
 int UNFM_P_SIZE ; 
 int FUNC8 (struct tree_balance*,char) ; 
 int /*<<< orphan*/  cut_from_item_restarted ; 
 int /*<<< orphan*/  FUNC9 (struct tree_balance*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int FUNC10 (char,struct tree_balance*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct item_head* FUNC11 (struct treepath*) ; 
 int /*<<< orphan*/  i_pack_on_close_mask ; 
 int FUNC12 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct reiserfs_transaction_handle*,struct inode*,struct treepath*) ; 
 int /*<<< orphan*/  FUNC14 (struct reiserfs_transaction_handle*,struct tree_balance*,struct super_block*,struct treepath*,int) ; 
 scalar_t__ FUNC15 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct item_head*) ; 
 int FUNC17 (struct item_head*) ; 
 int FUNC18 (struct reiserfs_transaction_handle*,struct inode*,struct page*,struct treepath*,struct cpu_key*,int,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct treepath*) ; 
 char FUNC20 (struct reiserfs_transaction_handle*,struct inode*,struct treepath*,struct cpu_key*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct super_block*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC23 (struct super_block*,char*,char*,struct cpu_key*,...) ; 
 int /*<<< orphan*/  FUNC24 (struct super_block*,char*,char*,...) ; 
 int FUNC25 (struct super_block*,struct cpu_key*,struct treepath*) ; 
 int /*<<< orphan*/  FUNC26 (struct cpu_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct cpu_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct tree_balance*) ; 
 int /*<<< orphan*/  FUNC29 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*,int) ; 

int FUNC31(struct reiserfs_transaction_handle *th,
			   struct treepath *path,
			   struct cpu_key *item_key,
			   struct inode *inode,
			   struct page *page, loff_t new_file_size)
{
	struct super_block *sb = inode->i_sb;
	/* Every function which is going to call do_balance must first
	   create a tree_balance structure.  Then it must fill up this
	   structure by using the init_tb_struct and fix_nodes functions.
	   After that we can make tree balancing. */
	struct tree_balance s_cut_balance;
	struct item_head *p_le_ih;
	int cut_size = 0,	/* Amount to be cut. */
	    ret_value = CARRY_ON, removed = 0,	/* Number of the removed unformatted nodes. */
	    is_inode_locked = 0;
	char mode;		/* Mode of the balance. */
	int retval2 = -1;
	int quota_cut_bytes;
	loff_t tail_pos = 0;

	FUNC0(!th->t_trans_id);

	FUNC14(th, &s_cut_balance, inode->i_sb, path,
		       cut_size);

	/* Repeat this loop until we either cut the item without needing
	   to balance, or we fix_nodes without schedule occurring */
	while (1) {
		/* Determine the balance mode, position of the first byte to
		   be cut, and size to be cut.  In case of the indirect item
		   free unformatted nodes which are pointed to by the cut
		   pointers. */

		mode =
		    FUNC20(th, inode, path,
					      item_key, &removed,
					      &cut_size, new_file_size);
		if (mode == M_CONVERT) {
			/* convert last unformatted node to direct item or leave
			   tail in the unformatted node */
			FUNC6(ret_value != CARRY_ON,
			       "PAP-5570: can not convert twice");

			ret_value =
			    FUNC18(th, inode, page,
						     path, item_key,
						     new_file_size, &mode);
			if (mode == M_SKIP_BALANCING)
				/* tail has been left in the unformatted node */
				return ret_value;

			is_inode_locked = 1;

			/* removing of last unformatted node will change value we
			   have to return to truncate. Save it */
			retval2 = ret_value;
			/*retval2 = sb->s_blocksize - (new_file_size & (sb->s_blocksize - 1)); */

			/* So, we have performed the first part of the conversion:
			   inserting the new direct item.  Now we are removing the
			   last unformatted node pointer. Set key to search for
			   it. */
			FUNC27(item_key, TYPE_INDIRECT);
			item_key->key_length = 4;
			new_file_size -=
			    (new_file_size & (sb->s_blocksize - 1));
			tail_pos = new_file_size;
			FUNC26(item_key, new_file_size + 1);
			if (FUNC25
			    (sb, item_key,
			     path) == POSITION_NOT_FOUND) {
				FUNC21(FUNC3(path), 3,
					    FUNC1(path) - 1,
					    FUNC1(path) + 1);
				FUNC23(sb, "PAP-5580", "item to "
					       "convert does not exist (%K)",
					       item_key);
			}
			continue;
		}
		if (cut_size == 0) {
			FUNC19(path);
			return 0;
		}

		s_cut_balance.insert_size[0] = cut_size;

		ret_value = FUNC10(mode, &s_cut_balance, NULL, NULL);
		if (ret_value != REPEAT_SEARCH)
			break;

		FUNC4(sb, cut_from_item_restarted);

		ret_value =
		    FUNC25(sb, item_key, path);
		if (ret_value == POSITION_FOUND)
			continue;

		FUNC24(sb, "PAP-5610", "item %K not found",
				 item_key);
		FUNC28(&s_cut_balance);
		return (ret_value == IO_ERROR) ? -EIO : -ENOENT;
	}			/* while */

	// check fix_nodes results (IO_ERROR or NO_DISK_SPACE)
	if (ret_value != CARRY_ON) {
		if (is_inode_locked) {
			// FIXME: this seems to be not needed: we are always able
			// to cut item
			FUNC13(th, inode, path);
		}
		if (ret_value == NO_DISK_SPACE)
			FUNC24(sb, "reiserfs-5092",
					 "NO_DISK_SPACE");
		FUNC28(&s_cut_balance);
		return -EIO;
	}

	/* go ahead and perform balancing */

	FUNC6(mode == M_PASTE || mode == M_INSERT, "invalid mode");

	/* Calculate number of bytes that need to be cut from the item. */
	quota_cut_bytes =
	    (mode ==
	     M_DELETE) ? FUNC12(FUNC11(path)) : -s_cut_balance.
	    insert_size[0];
	if (retval2 == -1)
		ret_value = FUNC8(&s_cut_balance, mode);
	else
		ret_value = retval2;

	/* For direct items, we only change the quota when deleting the last
	 ** item.
	 */
	p_le_ih = FUNC2(s_cut_balance.tb_path);
	if (!FUNC7(inode->i_mode) && FUNC15(p_le_ih)) {
		if (mode == M_DELETE &&
		    (FUNC17(p_le_ih) & (sb->s_blocksize - 1)) ==
		    1) {
			// FIXME: this is to keep 3.5 happy
			FUNC5(inode)->i_first_direct_byte = U32_MAX;
			quota_cut_bytes = sb->s_blocksize + UNFM_P_SIZE;
		} else {
			quota_cut_bytes = 0;
		}
	}
#ifdef CONFIG_REISERFS_CHECK
	if (is_inode_locked) {
		struct item_head *le_ih =
		    PATH_PITEM_HEAD(s_cut_balance.tb_path);
		/* we are going to complete indirect2direct conversion. Make
		   sure, that we exactly remove last unformatted node pointer
		   of the item */
		if (!is_indirect_le_ih(le_ih))
			reiserfs_panic(sb, "vs-5652",
				       "item must be indirect %h", le_ih);

		if (mode == M_DELETE && ih_item_len(le_ih) != UNFM_P_SIZE)
			reiserfs_panic(sb, "vs-5653", "completing "
				       "indirect2direct conversion indirect "
				       "item %h being deleted must be of "
				       "4 byte long", le_ih);

		if (mode == M_CUT
		    && s_cut_balance.insert_size[0] != -UNFM_P_SIZE) {
			reiserfs_panic(sb, "vs-5654", "can not complete "
				       "indirect2direct conversion of %h "
				       "(CUT, insert_size==%d)",
				       le_ih, s_cut_balance.insert_size[0]);
		}
		/* it would be useful to make sure, that right neighboring
		   item is direct item of this file */
	}
#endif

	FUNC9(&s_cut_balance, NULL, NULL, mode);
	if (is_inode_locked) {
		/* we've done an indirect->direct conversion.  when the data block
		 ** was freed, it was removed from the list of blocks that must
		 ** be flushed before the transaction commits, make sure to
		 ** unmap and invalidate it
		 */
		FUNC29(page, tail_pos);
		FUNC5(inode)->i_flags &= ~i_pack_on_close_mask;
	}
#ifdef REISERQUOTA_DEBUG
	reiserfs_debug(inode->i_sb, REISERFS_DEBUG_CODE,
		       "reiserquota cut_from_item(): freeing %u id=%u type=%c",
		       quota_cut_bytes, inode->i_uid, '?');
#endif
	FUNC30(inode, quota_cut_bytes);
	return ret_value;
}