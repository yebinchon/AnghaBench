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
typedef  int u64 ;
struct inode {int i_size; scalar_t__ i_nlink; int /*<<< orphan*/  i_mapping; } ;
struct btrfs_trans_handle {unsigned long blocks_used; struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root {int sectorsize; TYPE_1__* fs_info; struct btrfs_block_rsv* orphan_block_rsv; } ;
struct btrfs_block_rsv {int size; } ;
struct TYPE_4__ {int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;
struct TYPE_3__ {struct btrfs_block_rsv trans_block_rsv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_EXTENT_DATA_KEY ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_ORDERED_DATA_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 struct btrfs_block_rsv* FUNC5 (struct btrfs_root*) ; 
 int FUNC6 (struct btrfs_block_rsv*,struct btrfs_block_rsv*,int) ; 
 int FUNC7 (struct btrfs_root*,struct btrfs_block_rsv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_root*,unsigned long) ; 
 int FUNC9 (struct btrfs_root*,int) ; 
 int FUNC10 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_root*,struct btrfs_block_rsv*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct btrfs_trans_handle*,struct inode*) ; 
 int FUNC14 (struct btrfs_trans_handle*,struct inode*) ; 
 struct btrfs_trans_handle* FUNC15 (struct btrfs_root*,int) ; 
 int FUNC16 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct inode *inode)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_block_rsv *rsv;
	int ret;
	int err = 0;
	struct btrfs_trans_handle *trans;
	unsigned long nr;
	u64 mask = root->sectorsize - 1;
	u64 min_size = FUNC9(root, 1);

	ret = FUNC17(inode->i_mapping, inode->i_size);
	if (ret)
		return ret;

	FUNC19(inode, inode->i_size & (~mask), (u64)-1);
	FUNC12(inode, inode->i_size, NULL);

	/*
	 * Yes ladies and gentelment, this is indeed ugly.  The fact is we have
	 * 3 things going on here
	 *
	 * 1) We need to reserve space for our orphan item and the space to
	 * delete our orphan item.  Lord knows we don't want to have a dangling
	 * orphan item because we didn't reserve space to remove it.
	 *
	 * 2) We need to reserve space to update our inode.
	 *
	 * 3) We need to have something to cache all the space that is going to
	 * be free'd up by the truncate operation, but also have some slack
	 * space reserved in case it uses space during the truncate (thank you
	 * very much snapshotting).
	 *
	 * And we need these to all be seperate.  The fact is we can use alot of
	 * space doing the truncate, and we have no earthly idea how much space
	 * we will use, so we need the truncate reservation to be seperate so it
	 * doesn't end up using space reserved for updating the inode or
	 * removing the orphan item.  We also need to be able to stop the
	 * transaction and start a new one, which means we need to be able to
	 * update the inode several times, and we have no idea of knowing how
	 * many times that will be, so we can't just reserve 1 item for the
	 * entirety of the opration, so that has to be done seperately as well.
	 * Then there is the orphan item, which does indeed need to be held on
	 * to for the whole operation, and we need nobody to touch this reserved
	 * space except the orphan code.
	 *
	 * So that leaves us with
	 *
	 * 1) root->orphan_block_rsv - for the orphan deletion.
	 * 2) rsv - for the truncate reservation, which we will steal from the
	 * transaction reservation.
	 * 3) fs_info->trans_block_rsv - this will have 1 items worth left for
	 * updating the inode.
	 */
	rsv = FUNC5(root);
	if (!rsv)
		return -ENOMEM;
	rsv->size = min_size;

	/*
	 * 1 for the truncate slack space
	 * 1 for the orphan item we're going to add
	 * 1 for the orphan item deletion
	 * 1 for updating the inode.
	 */
	trans = FUNC15(root, 4);
	if (FUNC2(trans)) {
		err = FUNC3(trans);
		goto out;
	}

	/* Migrate the slack space for the truncate to our reserve */
	ret = FUNC6(&root->fs_info->trans_block_rsv, rsv,
				      min_size);
	FUNC1(ret);

	ret = FUNC13(trans, inode);
	if (ret) {
		FUNC10(trans, root);
		goto out;
	}

	/*
	 * setattr is responsible for setting the ordered_data_close flag,
	 * but that is only tested during the last file release.  That
	 * could happen well after the next commit, leaving a great big
	 * window where new writes may get lost if someone chooses to write
	 * to this file after truncating to zero
	 *
	 * The inode doesn't have any dirty data here, and so if we commit
	 * this is a noop.  If someone immediately starts writing to the inode
	 * it is very likely we'll catch some of their writes in this
	 * transaction, and the commit will find this file on the ordered
	 * data list with good things to send down.
	 *
	 * This is a best effort solution, there is still a window where
	 * using truncate to replace the contents of the file will
	 * end up with a zero length file after a crash.
	 */
	if (inode->i_size == 0 && FUNC20(BTRFS_INODE_ORDERED_DATA_CLOSE,
					   &FUNC0(inode)->runtime_flags))
		FUNC4(trans, root, inode);

	while (1) {
		ret = FUNC7(root, rsv, min_size);
		if (ret) {
			/*
			 * This can only happen with the original transaction we
			 * started above, every other time we shouldn't have a
			 * transaction started yet.
			 */
			if (ret == -EAGAIN)
				goto end_trans;
			err = ret;
			break;
		}

		if (!trans) {
			/* Just need the 1 for updating the inode */
			trans = FUNC15(root, 1);
			if (FUNC2(trans)) {
				ret = err = FUNC3(trans);
				trans = NULL;
				break;
			}
		}

		trans->block_rsv = rsv;

		ret = FUNC16(trans, root, inode,
						 inode->i_size,
						 BTRFS_EXTENT_DATA_KEY);
		if (ret != -EAGAIN) {
			err = ret;
			break;
		}

		trans->block_rsv = &root->fs_info->trans_block_rsv;
		ret = FUNC18(trans, root, inode);
		if (ret) {
			err = ret;
			break;
		}
end_trans:
		nr = trans->blocks_used;
		FUNC10(trans, root);
		trans = NULL;
		FUNC8(root, nr);
	}

	if (ret == 0 && inode->i_nlink > 0) {
		trans->block_rsv = root->orphan_block_rsv;
		ret = FUNC14(trans, inode);
		if (ret)
			err = ret;
	} else if (ret && inode->i_nlink > 0) {
		/*
		 * Failed to do the truncate, remove us from the in memory
		 * orphan list.
		 */
		ret = FUNC14(NULL, inode);
	}

	if (trans) {
		trans->block_rsv = &root->fs_info->trans_block_rsv;
		ret = FUNC18(trans, root, inode);
		if (ret && !err)
			err = ret;

		nr = trans->blocks_used;
		ret = FUNC10(trans, root);
		FUNC8(root, nr);
	}

out:
	FUNC11(root, rsv);

	if (ret && !err)
		err = ret;

	return err;
}