#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* name; int /*<<< orphan*/  unplug_io_fn; int /*<<< orphan*/  capabilities; } ;
struct TYPE_5__ {int /*<<< orphan*/  vol_id; int /*<<< orphan*/  ubi_num; } ;
struct ubifs_info {scalar_t__ max_inode_sz; struct inode* ubi; TYPE_2__ bdi; int /*<<< orphan*/  umount_mutex; TYPE_1__ vi; int /*<<< orphan*/  di; int /*<<< orphan*/  ltail_lnum; int /*<<< orphan*/  lhead_lnum; int /*<<< orphan*/  highest_inum; struct super_block* vfs_sb; int /*<<< orphan*/  orph_new; int /*<<< orphan*/  orph_list; int /*<<< orphan*/  old_buds; int /*<<< orphan*/  unclean_leb_list; int /*<<< orphan*/  frdi_idx_list; int /*<<< orphan*/  freeable_list; int /*<<< orphan*/  empty_list; int /*<<< orphan*/  uncat_list; int /*<<< orphan*/  replay_buds; int /*<<< orphan*/  replay_list; int /*<<< orphan*/  idx_gc; int /*<<< orphan*/  infos_list; void* orph_tree; void* size_tree; void* old_idx; void* buds; int /*<<< orphan*/  cmt_wq; int /*<<< orphan*/  bu_mutex; int /*<<< orphan*/  mst_mutex; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/  tnc_mutex; int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  commit_sem; int /*<<< orphan*/  orphan_lock; int /*<<< orphan*/  space_lock; int /*<<< orphan*/  buds_lock; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  cnt_lock; } ;
struct ubi_volume_desc {scalar_t__ max_inode_sz; struct inode* ubi; TYPE_2__ bdi; int /*<<< orphan*/  umount_mutex; TYPE_1__ vi; int /*<<< orphan*/  di; int /*<<< orphan*/  ltail_lnum; int /*<<< orphan*/  lhead_lnum; int /*<<< orphan*/  highest_inum; struct super_block* vfs_sb; int /*<<< orphan*/  orph_new; int /*<<< orphan*/  orph_list; int /*<<< orphan*/  old_buds; int /*<<< orphan*/  unclean_leb_list; int /*<<< orphan*/  frdi_idx_list; int /*<<< orphan*/  freeable_list; int /*<<< orphan*/  empty_list; int /*<<< orphan*/  uncat_list; int /*<<< orphan*/  replay_buds; int /*<<< orphan*/  replay_list; int /*<<< orphan*/  idx_gc; int /*<<< orphan*/  infos_list; void* orph_tree; void* size_tree; void* old_idx; void* buds; int /*<<< orphan*/  cmt_wq; int /*<<< orphan*/  bu_mutex; int /*<<< orphan*/  mst_mutex; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/  tnc_mutex; int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  commit_sem; int /*<<< orphan*/  orphan_lock; int /*<<< orphan*/  space_lock; int /*<<< orphan*/  buds_lock; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  cnt_lock; } ;
struct super_block {scalar_t__ s_maxbytes; int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_magic; struct ubifs_info* s_fs_info; TYPE_2__* s_bdi; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_CAP_MAP_COPY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ MAX_LFS_FILESIZE ; 
 int FUNC2 (struct inode*) ; 
 void* RB_ROOT ; 
 int /*<<< orphan*/  UBIFS_BLOCK_SHIFT ; 
 int /*<<< orphan*/  UBIFS_BLOCK_SIZE ; 
 int /*<<< orphan*/  UBIFS_FIRST_INO ; 
 int /*<<< orphan*/  UBIFS_LOG_LNUM ; 
 int /*<<< orphan*/  UBIFS_ROOT_INO ; 
 int /*<<< orphan*/  UBIFS_SUPER_MAGIC ; 
 int /*<<< orphan*/  UBI_READWRITE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  default_unplug_io_fn ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*) ; 
 struct ubifs_info* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct ubifs_info*,TYPE_1__*) ; 
 struct inode* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 struct inode* FUNC23 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct ubifs_info*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ubifs_super_operations ; 
 int /*<<< orphan*/  FUNC25 (struct ubifs_info*) ; 

__attribute__((used)) static int FUNC26(struct super_block *sb, void *data, int silent)
{
	struct ubi_volume_desc *ubi = sb->s_fs_info;
	struct ubifs_info *c;
	struct inode *root;
	int err;

	c = FUNC12(sizeof(struct ubifs_info), GFP_KERNEL);
	if (!c)
		return -ENOMEM;

	FUNC17(&c->cnt_lock);
	FUNC17(&c->cs_lock);
	FUNC17(&c->buds_lock);
	FUNC17(&c->space_lock);
	FUNC17(&c->orphan_lock);
	FUNC7(&c->commit_sem);
	FUNC14(&c->lp_mutex);
	FUNC14(&c->tnc_mutex);
	FUNC14(&c->log_mutex);
	FUNC14(&c->mst_mutex);
	FUNC14(&c->umount_mutex);
	FUNC14(&c->bu_mutex);
	FUNC8(&c->cmt_wq);
	c->buds = RB_ROOT;
	c->old_idx = RB_ROOT;
	c->size_tree = RB_ROOT;
	c->orph_tree = RB_ROOT;
	FUNC0(&c->infos_list);
	FUNC0(&c->idx_gc);
	FUNC0(&c->replay_list);
	FUNC0(&c->replay_buds);
	FUNC0(&c->uncat_list);
	FUNC0(&c->empty_list);
	FUNC0(&c->freeable_list);
	FUNC0(&c->frdi_idx_list);
	FUNC0(&c->unclean_leb_list);
	FUNC0(&c->old_buds);
	FUNC0(&c->orph_list);
	FUNC0(&c->orph_new);

	c->vfs_sb = sb;
	c->highest_inum = UBIFS_FIRST_INO;
	c->lhead_lnum = c->ltail_lnum = UBIFS_LOG_LNUM;

	FUNC20(ubi, &c->vi);
	FUNC19(c->vi.ubi_num, &c->di);

	/* Re-open the UBI device in read-write mode */
	c->ubi = FUNC21(c->vi.ubi_num, c->vi.vol_id, UBI_READWRITE);
	if (FUNC1(c->ubi)) {
		err = FUNC2(c->ubi);
		goto out_free;
	}

	/*
	 * UBIFS provides 'backing_dev_info' in order to disable read-ahead. For
	 * UBIFS, I/O is not deferred, it is done immediately in readpage,
	 * which means the user would have to wait not just for their own I/O
	 * but the read-ahead I/O as well i.e. completely pointless.
	 *
	 * Read-ahead will be disabled because @c->bdi.ra_pages is 0.
	 */
	c->bdi.name = "ubifs",
	c->bdi.capabilities = BDI_CAP_MAP_COPY;
	c->bdi.unplug_io_fn = default_unplug_io_fn;
	err  = FUNC4(&c->bdi);
	if (err)
		goto out_close;
	err = FUNC5(&c->bdi, NULL, "ubifs_%d_%d",
			   c->vi.ubi_num, c->vi.vol_id);
	if (err)
		goto out_bdi;

	err = FUNC24(c, data, 0);
	if (err)
		goto out_bdi;

	sb->s_bdi = &c->bdi;
	sb->s_fs_info = c;
	sb->s_magic = UBIFS_SUPER_MAGIC;
	sb->s_blocksize = UBIFS_BLOCK_SIZE;
	sb->s_blocksize_bits = UBIFS_BLOCK_SHIFT;
	sb->s_maxbytes = c->max_inode_sz = FUNC10(c);
	if (c->max_inode_sz > MAX_LFS_FILESIZE)
		sb->s_maxbytes = c->max_inode_sz = MAX_LFS_FILESIZE;
	sb->s_op = &ubifs_super_operations;

	FUNC15(&c->umount_mutex);
	err = FUNC13(c);
	if (err) {
		FUNC22(err < 0);
		goto out_unlock;
	}

	/* Read the root inode */
	root = FUNC23(sb, UBIFS_ROOT_INO);
	if (FUNC1(root)) {
		err = FUNC2(root);
		goto out_umount;
	}

	sb->s_root = FUNC6(root);
	if (!sb->s_root)
		goto out_iput;

	FUNC16(&c->umount_mutex);
	return 0;

out_iput:
	FUNC9(root);
out_umount:
	FUNC25(c);
out_unlock:
	FUNC16(&c->umount_mutex);
out_bdi:
	FUNC3(&c->bdi);
out_close:
	FUNC18(c->ubi);
out_free:
	FUNC11(c);
	return err;
}