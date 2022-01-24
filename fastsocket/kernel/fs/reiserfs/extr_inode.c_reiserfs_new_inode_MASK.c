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
struct super_block {int s_flags; } ;
struct stat_data {int dummy; } ;
struct reiserfs_transaction_handle {int displace_new_blocks; scalar_t__ t_trans_id; int /*<<< orphan*/  t_blocks_allocated; int /*<<< orphan*/  t_super; } ;
struct reiserfs_security_handle {scalar_t__ name; } ;
struct reiserfs_iget_args {void* objectid; void* dirid; } ;
struct TYPE_9__ {scalar_t__ k_objectid; scalar_t__ k_dir_id; } ;
struct item_head {TYPE_3__ ih_key; } ;
struct inode {int i_nlink; int i_mode; int i_flags; int i_uid; int i_gid; struct super_block* i_sb; int /*<<< orphan*/  i_size; scalar_t__ i_bytes; scalar_t__ i_blocks; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; void* i_generation; void* i_ino; } ;
struct dentry {int dummy; } ;
struct cpu_key {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_11__ {int i_first_direct_byte; int i_attrs; scalar_t__ new_packing_locality; int /*<<< orphan*/  i_mmap; int /*<<< orphan*/ * i_jl; scalar_t__ i_trans_id; scalar_t__ i_prealloc_count; scalar_t__ i_prealloc_block; scalar_t__ i_flags; int /*<<< orphan*/  i_prealloc_list; } ;
struct TYPE_10__ {TYPE_1__* s_rs; } ;
struct TYPE_8__ {scalar_t__ k_objectid; } ;
struct TYPE_7__ {scalar_t__ s_inode_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EDQUOT ; 
 int EEXIST ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 int IO_ERROR ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int ITEM_FOUND ; 
 int /*<<< orphan*/  KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  KEY_FORMAT_3_6 ; 
 int /*<<< orphan*/  KEY_SIZE ; 
 int /*<<< orphan*/  MAX_US_INT ; 
 int MS_POSIXACL ; 
 TYPE_5__* FUNC5 (struct inode*) ; 
 int REISERFS_INHERIT_MASK ; 
 TYPE_4__* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_OFFSET ; 
 int /*<<< orphan*/  SD_SIZE ; 
 int /*<<< orphan*/  SD_V1_SIZE ; 
 int /*<<< orphan*/  STAT_DATA_V1 ; 
 int /*<<< orphan*/  STAT_DATA_V2 ; 
 int S_APPEND ; 
 int S_IMMUTABLE ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int S_NOQUOTA ; 
 int S_PRIVATE ; 
 int /*<<< orphan*/  TYPE_STAT_DATA ; 
 int U32_MAX ; 
 int /*<<< orphan*/  FUNC10 (struct cpu_key*,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 void* event ; 
 int /*<<< orphan*/  FUNC12 (struct stat_data*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct stat_data*,struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct inode*,void*,int /*<<< orphan*/ ,struct reiserfs_iget_args*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int FUNC16 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct item_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (struct super_block*) ; 
 int /*<<< orphan*/  path_to_key ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  reiserfs_find_actor ; 
 int /*<<< orphan*/  FUNC26 (struct reiserfs_transaction_handle*) ; 
 int FUNC27 (struct reiserfs_transaction_handle*,struct inode*,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 
 int FUNC29 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ *,struct cpu_key*,struct item_head*,struct inode*,char*) ; 
 int FUNC30 (struct reiserfs_transaction_handle*,struct inode*,struct item_head*,int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC31 (struct reiserfs_transaction_handle*,struct inode*,struct item_head*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (struct super_block*) ; 
 int FUNC33 (struct reiserfs_transaction_handle*,struct inode*,struct reiserfs_security_handle*) ; 
 int /*<<< orphan*/  FUNC34 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC35 (struct super_block*,char*,char*) ; 
 int /*<<< orphan*/  FUNC36 (int,struct inode*) ; 
 int FUNC37 (struct super_block*,struct cpu_key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct inode*) ; 
 scalar_t__ FUNC41 (struct inode*) ; 
 int /*<<< orphan*/  FUNC42 (struct inode*) ; 
 int /*<<< orphan*/  FUNC43 (struct inode*) ; 

int FUNC44(struct reiserfs_transaction_handle *th,
		       struct inode *dir, int mode, const char *symname,
		       /* 0 for regular, EMTRY_DIR_SIZE for dirs,
		          strlen (symname) for symlinks) */
		       loff_t i_size, struct dentry *dentry,
		       struct inode *inode,
		       struct reiserfs_security_handle *security)
{
	struct super_block *sb;
	struct reiserfs_iget_args args;
	FUNC1(path_to_key);
	struct cpu_key key;
	struct item_head ih;
	struct stat_data sd;
	int retval;
	int err;

	FUNC0(!th->t_trans_id);

	if (FUNC41(inode)) {
		err = -EDQUOT;
		goto out_end_trans;
	}
	if (!dir->i_nlink) {
		err = -EPERM;
		goto out_bad_inode;
	}

	sb = dir->i_sb;

	/* item head of new item */
	ih.ih_key.k_dir_id = FUNC25(dir);
	ih.ih_key.k_objectid = FUNC11(FUNC26(th));
	if (!ih.ih_key.k_objectid) {
		err = -ENOMEM;
		goto out_bad_inode;
	}
	args.objectid = inode->i_ino = FUNC17(ih.ih_key.k_objectid);
	if (FUNC22(sb))
		FUNC19(&ih, NULL, KEY_FORMAT_3_5, SD_OFFSET,
				  TYPE_STAT_DATA, SD_V1_SIZE, MAX_US_INT);
	else
		FUNC19(&ih, NULL, KEY_FORMAT_3_6, SD_OFFSET,
				  TYPE_STAT_DATA, SD_SIZE, MAX_US_INT);
	FUNC20(FUNC3(inode), &(ih.ih_key), KEY_SIZE);
	args.dirid = FUNC17(ih.ih_key.k_dir_id);
	if (FUNC14(inode, args.objectid,
			     reiserfs_find_actor, &args) < 0) {
		err = -EINVAL;
		goto out_bad_inode;
	}
	if (FUNC22(sb))
		/* not a perfect generation count, as object ids can be reused, but
		 ** this is as good as reiserfs can do right now.
		 ** note that the private part of inode isn't filled in yet, we have
		 ** to use the directory.
		 */
		inode->i_generation = FUNC17(FUNC3(dir)->k_objectid);
	else
#if defined( USE_INODE_GENERATION_COUNTER )
		inode->i_generation =
		    le32_to_cpu(REISERFS_SB(sb)->s_rs->s_inode_generation);
#else
		inode->i_generation = ++event;
#endif

	/* fill stat data */
	inode->i_nlink = (FUNC8(mode) ? 2 : 1);

	/* uid and gid must already be set by the caller for quota init */

	/* symlink cannot be immutable or append only, right? */
	if (FUNC9(inode->i_mode))
		inode->i_flags &= ~(S_IMMUTABLE | S_APPEND);

	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME_SEC;
	inode->i_size = i_size;
	inode->i_blocks = 0;
	inode->i_bytes = 0;
	FUNC5(inode)->i_first_direct_byte = FUNC9(mode) ? 1 :
	    U32_MAX /*NO_BYTES_IN_DIRECT_ITEM */ ;

	FUNC2(&(FUNC5(inode)->i_prealloc_list));
	FUNC5(inode)->i_flags = 0;
	FUNC5(inode)->i_prealloc_block = 0;
	FUNC5(inode)->i_prealloc_count = 0;
	FUNC5(inode)->i_trans_id = 0;
	FUNC5(inode)->i_jl = NULL;
	FUNC5(inode)->i_attrs =
	    FUNC5(dir)->i_attrs & REISERFS_INHERIT_MASK;
	FUNC36(FUNC5(inode)->i_attrs, inode);
	FUNC21(&(FUNC5(inode)->i_mmap));
	FUNC28(inode);

	/* key to search for correct place for new stat data */
	FUNC10(&key, KEY_FORMAT_3_6, FUNC17(ih.ih_key.k_dir_id),
		      FUNC17(ih.ih_key.k_objectid), SD_OFFSET,
		      TYPE_STAT_DATA, 3 /*key length */ );

	/* find proper place for inserting of stat data */
	retval = FUNC37(sb, &key, &path_to_key);
	if (retval == IO_ERROR) {
		err = -EIO;
		goto out_bad_inode;
	}
	if (retval == ITEM_FOUND) {
		FUNC23(&path_to_key);
		err = -EEXIST;
		goto out_bad_inode;
	}
	if (FUNC22(sb)) {
		if (inode->i_uid & ~0xffff || inode->i_gid & ~0xffff) {
			FUNC23(&path_to_key);
			/* i_uid or i_gid is too big to be stored in stat data v3.5 */
			err = -EINVAL;
			goto out_bad_inode;
		}
		FUNC13(&sd, inode, inode->i_size);
	} else {
		FUNC12(&sd, inode, inode->i_size);
	}
	// store in in-core inode the key of stat data and version all
	// object items will have (directory items will have old offset
	// format, other new objects will consist of new items)
	if (FUNC22(sb) || FUNC8(mode) || FUNC9(mode))
		FUNC38(inode, KEY_FORMAT_3_5);
	else
		FUNC38(inode, KEY_FORMAT_3_6);
	if (FUNC22(sb))
		FUNC39(inode, STAT_DATA_V1);
	else
		FUNC39(inode, STAT_DATA_V2);

	/* insert the stat data into the tree */
#ifdef DISPLACE_NEW_PACKING_LOCALITIES
	if (REISERFS_I(dir)->new_packing_locality)
		th->displace_new_blocks = 1;
#endif
	retval =
	    FUNC29(th, &path_to_key, &key, &ih, inode,
				 (char *)(&sd));
	if (retval) {
		err = retval;
		FUNC24(&path_to_key);
		goto out_bad_inode;
	}
#ifdef DISPLACE_NEW_PACKING_LOCALITIES
	if (!th->displace_new_blocks)
		REISERFS_I(dir)->new_packing_locality = 0;
#endif
	if (FUNC8(mode)) {
		/* insert item with "." and ".." */
		retval =
		    FUNC30(th, inode, &ih, &path_to_key, dir);
	}

	if (FUNC9(mode)) {
		/* insert body of symlink */
		if (!FUNC22(sb))
			i_size = FUNC7(i_size);
		retval =
		    FUNC31(th, inode, &ih, &path_to_key, symname,
					 i_size);
	}
	if (retval) {
		err = retval;
		FUNC24(&path_to_key);
		FUNC16(th, th->t_super, th->t_blocks_allocated);
		goto out_inserted_sd;
	}

	if (FUNC32(inode->i_sb)) {
		retval = FUNC27(th, dir, dentry, inode);
		if (retval) {
			err = retval;
			FUNC24(&path_to_key);
			FUNC16(th, th->t_super, th->t_blocks_allocated);
			goto out_inserted_sd;
		}
	} else if (inode->i_sb->s_flags & MS_POSIXACL) {
		FUNC35(inode->i_sb, "jdm-13090",
				 "ACLs aren't enabled in the fs, "
				 "but vfs thinks they are!");
	} else if (FUNC4(dir))
		inode->i_flags |= S_PRIVATE;

	if (security->name) {
		retval = FUNC33(th, inode, security);
		if (retval) {
			err = retval;
			FUNC24(&path_to_key);
			retval = FUNC16(th, th->t_super,
					     th->t_blocks_allocated);
			if (retval)
				err = retval;
			goto out_inserted_sd;
		}
	}

	FUNC34(th, inode);
	FUNC24(&path_to_key);

	return 0;

/* it looks like you can easily compress these two goto targets into
 * one.  Keeping it like this doesn't actually hurt anything, and they
 * are place holders for what the quota code actually needs.
 */
      out_bad_inode:
	/* Invalidate the object, nothing was inserted yet */
	FUNC3(inode)->k_objectid = 0;

	/* Quota change must be inside a transaction for journaling */
	FUNC43(inode);

      out_end_trans:
	FUNC16(th, th->t_super, th->t_blocks_allocated);
	/* Drop can be outside and it needs more credits so it's better to have it outside */
	FUNC42(inode);
	inode->i_flags |= S_NOQUOTA;
	FUNC18(inode);

      out_inserted_sd:
	inode->i_nlink = 0;
	th->t_trans_id = 0;	/* so the caller can't use this handle later */
	FUNC40(inode); /* OK to do even if we hadn't locked it */
	FUNC15(inode);
	return err;
}