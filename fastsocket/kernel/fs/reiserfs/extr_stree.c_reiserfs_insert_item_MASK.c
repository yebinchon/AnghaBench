#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct treepath {int dummy; } ;
struct tree_balance {int /*<<< orphan*/  key; } ;
struct reiserfs_transaction_handle {TYPE_1__* t_super; int /*<<< orphan*/  t_trans_id; } ;
struct item_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_uid; TYPE_1__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct cpu_key {int /*<<< orphan*/  on_disk_key; } ;
struct TYPE_8__ {int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CARRY_ON ; 
 int EDQUOT ; 
 int EEXIST ; 
 int EIO ; 
 int ENOSPC ; 
 scalar_t__ IH_SIZE ; 
 int IO_ERROR ; 
 int ITEM_FOUND ; 
 int /*<<< orphan*/  M_INSERT ; 
 int NO_DISK_SPACE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REISERFS_DEBUG_CODE ; 
 int REPEAT_SEARCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int UNFM_P_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct tree_balance*,struct item_head*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct tree_balance*,struct item_head*,char const*) ; 
 scalar_t__ FUNC5 (int,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct item_head*) ; 
 int FUNC8 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct reiserfs_transaction_handle*,struct tree_balance*,TYPE_1__*,struct treepath*,scalar_t__) ; 
 int /*<<< orphan*/  insert_item_restarted ; 
 scalar_t__ FUNC10 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct treepath*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,char*,struct cpu_key const*) ; 
 int FUNC14 (TYPE_1__*,struct cpu_key const*,struct treepath*) ; 
 int /*<<< orphan*/  FUNC15 (struct tree_balance*) ; 
 scalar_t__ FUNC16 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int) ; 

int FUNC18(struct reiserfs_transaction_handle *th,
			 struct treepath *path, const struct cpu_key *key,
			 struct item_head *ih, struct inode *inode,
			 const char *body)
{
	struct tree_balance s_ins_balance;
	int retval;
	int fs_gen = 0;
	int quota_bytes = 0;

	FUNC0(!th->t_trans_id);

	if (inode) {		/* Do we count quotas for item? */
		fs_gen = FUNC6(inode->i_sb);
		quota_bytes = FUNC8(ih);

		/* hack so the quota code doesn't have to guess if the file has
		 ** a tail, links are always tails, so there's no guessing needed
		 */
		if (!FUNC2(inode->i_mode) && FUNC10(ih))
			quota_bytes = inode->i_sb->s_blocksize + UNFM_P_SIZE;
#ifdef REISERQUOTA_DEBUG
		reiserfs_debug(inode->i_sb, REISERFS_DEBUG_CODE,
			       "reiserquota insert_item(): allocating %u id=%u type=%c",
			       quota_bytes, inode->i_uid, head2type(ih));
#endif
		/* We can't dirty inode here. It would be immediately written but
		 * appropriate stat item isn't inserted yet... */
		if (FUNC16(inode, quota_bytes)) {
			FUNC11(path);
			return -EDQUOT;
		}
	}
	FUNC9(th, &s_ins_balance, th->t_super, path,
		       IH_SIZE + FUNC8(ih));
#ifdef DISPLACE_NEW_PACKING_LOCALITIES
	s_ins_balance.key = key->on_disk_key;
#endif
	/* DQUOT_* can schedule, must check to be sure calling fix_nodes is safe */
	if (inode && FUNC5(fs_gen, inode->i_sb)) {
		goto search_again;
	}

	while ((retval =
		FUNC4(M_INSERT, &s_ins_balance, ih,
			  body)) == REPEAT_SEARCH) {
	      search_again:
		/* file system changed while we were in the fix_nodes */
		FUNC1(th->t_super, insert_item_restarted);
		retval = FUNC14(th->t_super, key, path);
		if (retval == IO_ERROR) {
			retval = -EIO;
			goto error_out;
		}
		if (retval == ITEM_FOUND) {
			FUNC13(th->t_super, "PAP-5760",
					 "key %K already exists in the tree",
					 key);
			retval = -EEXIST;
			goto error_out;
		}
	}

	/* make balancing after all resources will be collected at a time */
	if (retval == CARRY_ON) {
		FUNC3(&s_ins_balance, ih, body, M_INSERT);
		return 0;
	}

	retval = (retval == NO_DISK_SPACE) ? -ENOSPC : -EIO;
      error_out:
	/* also releases the path */
	FUNC15(&s_ins_balance);
#ifdef REISERQUOTA_DEBUG
	reiserfs_debug(th->t_super, REISERFS_DEBUG_CODE,
		       "reiserquota insert_item(): freeing %u id=%u type=%c",
		       quota_bytes, inode->i_uid, head2type(ih));
#endif
	if (inode)
		FUNC17(inode, quota_bytes);
	return retval;
}