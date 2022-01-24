#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
typedef  int /*<<< orphan*/  uid_t ;
struct super_block {int s_flags; struct hpfs_sb_info* s_fs_info; int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; } ;
struct quad_buffer_head {int dummy; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct inode {int i_size; int i_blocks; int /*<<< orphan*/  i_ino; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; } ;
struct hpfs_super_block {scalar_t__ magic; int funcversion; int n_sectors; scalar_t__ bitmaps; scalar_t__ dir_band_start; scalar_t__ n_dir_band; scalar_t__ dir_band_bitmap; scalar_t__ dir_band_end; int /*<<< orphan*/  root; scalar_t__ version; } ;
struct hpfs_spare_block {scalar_t__ magic; int dirty; scalar_t__ n_dnode_spares; scalar_t__ n_dnode_spares_free; int /*<<< orphan*/  code_page_dir; scalar_t__ n_code_pages; scalar_t__ n_spares_used; scalar_t__ hotfixes_used; scalar_t__ old_wrote; } ;
struct hpfs_sb_info {int sb_fs_size; scalar_t__ sb_bitmaps; scalar_t__ sb_dirband_start; scalar_t__ sb_dirband_size; scalar_t__ sb_dmap; int sb_mode; int sb_n_free; int sb_n_free_dnodes; int sb_lowercase; int sb_conv; int sb_eas; int sb_chk; int sb_chkdsk; int sb_err; int sb_timeshift; int sb_c_bitmap; int sb_max_fwd_alloc; struct hpfs_sb_info* sb_cp_table; struct hpfs_sb_info* sb_bmp_dir; int /*<<< orphan*/  sb_root; scalar_t__ sb_was_error; int /*<<< orphan*/  sb_gid; int /*<<< orphan*/  sb_uid; int /*<<< orphan*/  hpfs_creation_de; } ;
struct hpfs_dirent {int /*<<< orphan*/  ea_size; int /*<<< orphan*/  creation_date; int /*<<< orphan*/  write_date; int /*<<< orphan*/  read_date; } ;
struct hpfs_boot_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  scalar_t__ dnode_secno ;
struct TYPE_8__ {int /*<<< orphan*/  i_parent_dir; int /*<<< orphan*/  i_ea_size; } ;

/* Variables and functions */
 int CONV_BINARY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HPFS_SUPER_MAGIC ; 
 int MS_NOATIME ; 
 int MS_RDONLY ; 
 scalar_t__ SB_MAGIC ; 
 scalar_t__ SP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct quad_buffer_head*) ; 
 scalar_t__ FUNC6 (struct super_block*,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,...) ; 
 scalar_t__ FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_4__* FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 struct hpfs_sb_info* FUNC12 (struct super_block*,scalar_t__) ; 
 struct hpfs_sb_info* FUNC13 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC14 (struct super_block*,int,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpfs_sops ; 
 struct inode* FUNC17 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct hpfs_sb_info*) ; 
 struct hpfs_sb_info* FUNC21 (int,int /*<<< orphan*/ ) ; 
 void* FUNC22 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct hpfs_dirent* FUNC23 (struct inode*,scalar_t__,char*,int,int /*<<< orphan*/ *,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (struct super_block*) ; 
 int FUNC26 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 int /*<<< orphan*/  FUNC28 (struct super_block*,void*) ; 
 int /*<<< orphan*/  FUNC29 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 

__attribute__((used)) static int FUNC31(struct super_block *s, void *options, int silent)
{
	struct buffer_head *bh0, *bh1, *bh2;
	struct hpfs_boot_block *bootblock;
	struct hpfs_super_block *superblock;
	struct hpfs_spare_block *spareblock;
	struct hpfs_sb_info *sbi;
	struct inode *root;

	uid_t uid;
	gid_t gid;
	umode_t umask;
	int lowercase, conv, eas, chk, errs, chkdsk, timeshift;

	dnode_secno root_dno;
	struct hpfs_dirent *de = NULL;
	struct quad_buffer_head qbh;

	int o;

	FUNC28(s, options);

	sbi = FUNC21(sizeof(*sbi), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;
	s->s_fs_info = sbi;

	sbi->sb_bmp_dir = NULL;
	sbi->sb_cp_table = NULL;

	FUNC18(&sbi->hpfs_creation_de);

	uid = FUNC2();
	gid = FUNC1();
	umask = FUNC3();
	lowercase = 0;
	conv = CONV_BINARY;
	eas = 2;
	chk = 1;
	errs = 1;
	chkdsk = 1;
	timeshift = 0;

	if (!(o = FUNC26(options, &uid, &gid, &umask, &lowercase, &conv,
	    &eas, &chk, &errs, &chkdsk, &timeshift))) {
		FUNC27("HPFS: bad mount options.\n");
		goto bail0;
	}
	if (o==2) {
		FUNC9();
		goto bail0;
	}

	/*sbi->sb_mounting = 1;*/
	FUNC29(s, 512);
	sbi->sb_fs_size = -1;
	if (!(bootblock = FUNC14(s, 0, &bh0, 0))) goto bail1;
	if (!(superblock = FUNC14(s, 16, &bh1, 1))) goto bail2;
	if (!(spareblock = FUNC14(s, 17, &bh2, 0))) goto bail3;

	/* Check magics */
	if (/*bootblock->magic != BB_MAGIC
	    ||*/ superblock->magic != SB_MAGIC
	    || spareblock->magic != SP_MAGIC) {
		if (!silent) FUNC27("HPFS: Bad magic ... probably not HPFS\n");
		goto bail4;
	}

	/* Check version */
	if (!(s->s_flags & MS_RDONLY) &&
	      superblock->funcversion != 2 && superblock->funcversion != 3) {
		FUNC27("HPFS: Bad version %d,%d. Mount readonly to go around\n",
			(int)superblock->version, (int)superblock->funcversion);
		FUNC27("HPFS: please try recent version of HPFS driver at http://artax.karlin.mff.cuni.cz/~mikulas/vyplody/hpfs/index-e.cgi and if it still can't understand this format, contact author - mikulas@artax.karlin.mff.cuni.cz\n");
		goto bail4;
	}

	s->s_flags |= MS_NOATIME;

	/* Fill superblock stuff */
	s->s_magic = HPFS_SUPER_MAGIC;
	s->s_op = &hpfs_sops;

	sbi->sb_root = superblock->root;
	sbi->sb_fs_size = superblock->n_sectors;
	sbi->sb_bitmaps = superblock->bitmaps;
	sbi->sb_dirband_start = superblock->dir_band_start;
	sbi->sb_dirband_size = superblock->n_dir_band;
	sbi->sb_dmap = superblock->dir_band_bitmap;
	sbi->sb_uid = uid;
	sbi->sb_gid = gid;
	sbi->sb_mode = 0777 & ~umask;
	sbi->sb_n_free = -1;
	sbi->sb_n_free_dnodes = -1;
	sbi->sb_lowercase = lowercase;
	sbi->sb_conv = conv;
	sbi->sb_eas = eas;
	sbi->sb_chk = chk;
	sbi->sb_chkdsk = chkdsk;
	sbi->sb_err = errs;
	sbi->sb_timeshift = timeshift;
	sbi->sb_was_error = 0;
	sbi->sb_cp_table = NULL;
	sbi->sb_c_bitmap = -1;
	sbi->sb_max_fwd_alloc = 0xffffff;
	
	/* Load bitmap directory */
	if (!(sbi->sb_bmp_dir = FUNC12(s, superblock->bitmaps)))
		goto bail4;
	
	/* Check for general fs errors*/
	if (spareblock->dirty && !spareblock->old_wrote) {
		if (errs == 2) {
			FUNC27("HPFS: Improperly stopped, not mounted\n");
			goto bail4;
		}
		FUNC7(s, "improperly stopped");
	}

	if (!(s->s_flags & MS_RDONLY)) {
		spareblock->dirty = 1;
		spareblock->old_wrote = 0;
		FUNC24(bh2);
	}

	if (spareblock->hotfixes_used || spareblock->n_spares_used) {
		if (errs >= 2) {
			FUNC27("HPFS: Hotfixes not supported here, try chkdsk\n");
			FUNC25(s);
			goto bail4;
		}
		FUNC7(s, "hotfixes not supported here, try chkdsk");
		if (errs == 0) FUNC27("HPFS: Proceeding, but your filesystem will be probably corrupted by this driver...\n");
		else FUNC27("HPFS: This driver may read bad files or crash when operating on disk with hotfixes.\n");
	}
	if (spareblock->n_dnode_spares != spareblock->n_dnode_spares_free) {
		if (errs >= 2) {
			FUNC27("HPFS: Spare dnodes used, try chkdsk\n");
			FUNC25(s);
			goto bail4;
		}
		FUNC7(s, "warning: spare dnodes used, try chkdsk");
		if (errs == 0) FUNC27("HPFS: Proceeding, but your filesystem could be corrupted if you delete files or directories\n");
	}
	if (chk) {
		unsigned a;
		if (superblock->dir_band_end - superblock->dir_band_start + 1 != superblock->n_dir_band ||
		    superblock->dir_band_end < superblock->dir_band_start || superblock->n_dir_band > 0x4000) {
			FUNC7(s, "dir band size mismatch: dir_band_start==%08x, dir_band_end==%08x, n_dir_band==%08x",
				superblock->dir_band_start, superblock->dir_band_end, superblock->n_dir_band);
			goto bail4;
		}
		a = sbi->sb_dirband_size;
		sbi->sb_dirband_size = 0;
		if (FUNC6(s, superblock->dir_band_start, superblock->n_dir_band, "dir_band") ||
		    FUNC6(s, superblock->dir_band_bitmap, 4, "dir_band_bitmap") ||
		    FUNC6(s, superblock->bitmaps, 4, "bitmaps")) {
			FUNC25(s);
			goto bail4;
		}
		sbi->sb_dirband_size = a;
	} else FUNC27("HPFS: You really don't want any checks? You are crazy...\n");

	/* Load code page table */
	if (spareblock->n_code_pages)
		if (!(sbi->sb_cp_table = FUNC13(s, spareblock->code_page_dir)))
			FUNC27("HPFS: Warning: code page support is disabled\n");

	FUNC0(bh2);
	FUNC0(bh1);
	FUNC0(bh0);

	root = FUNC17(s, sbi->sb_root);
	if (!root)
		goto bail0;
	FUNC11(root);
	FUNC15(root);
	FUNC30(root);
	s->s_root = FUNC4(root);
	if (!s->s_root) {
		FUNC19(root);
		goto bail0;
	}
	FUNC16(s->s_root);

	/*
	 * find the root directory's . pointer & finish filling in the inode
	 */

	root_dno = FUNC8(s, sbi->sb_root);
	if (root_dno)
		de = FUNC23(root, root_dno, "\001\001", 2, NULL, &qbh);
	if (!de)
		FUNC7(s, "unable to find root dir");
	else {
		root->i_atime.tv_sec = FUNC22(s, de->read_date);
		root->i_atime.tv_nsec = 0;
		root->i_mtime.tv_sec = FUNC22(s, de->write_date);
		root->i_mtime.tv_nsec = 0;
		root->i_ctime.tv_sec = FUNC22(s, de->creation_date);
		root->i_ctime.tv_nsec = 0;
		FUNC10(root)->i_ea_size = de->ea_size;
		FUNC10(root)->i_parent_dir = root->i_ino;
		if (root->i_size == -1)
			root->i_size = 2048;
		if (root->i_blocks == -1)
			root->i_blocks = 5;
		FUNC5(&qbh);
	}
	return 0;

bail4:	FUNC0(bh2);
bail3:	FUNC0(bh1);
bail2:	FUNC0(bh0);
bail1:
bail0:
	FUNC20(sbi->sb_bmp_dir);
	FUNC20(sbi->sb_cp_table);
	s->s_fs_info = NULL;
	FUNC20(sbi);
	return -EINVAL;
}