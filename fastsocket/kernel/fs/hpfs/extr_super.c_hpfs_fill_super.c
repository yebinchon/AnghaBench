
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
typedef int uid_t ;
struct super_block {int s_flags; struct hpfs_sb_info* s_fs_info; int s_root; int * s_op; int s_magic; } ;
struct quad_buffer_head {int dummy; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct inode {int i_size; int i_blocks; int i_ino; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; } ;
struct hpfs_super_block {scalar_t__ magic; int funcversion; int n_sectors; scalar_t__ bitmaps; scalar_t__ dir_band_start; scalar_t__ n_dir_band; scalar_t__ dir_band_bitmap; scalar_t__ dir_band_end; int root; scalar_t__ version; } ;
struct hpfs_spare_block {scalar_t__ magic; int dirty; scalar_t__ n_dnode_spares; scalar_t__ n_dnode_spares_free; int code_page_dir; scalar_t__ n_code_pages; scalar_t__ n_spares_used; scalar_t__ hotfixes_used; scalar_t__ old_wrote; } ;
struct hpfs_sb_info {int sb_fs_size; scalar_t__ sb_bitmaps; scalar_t__ sb_dirband_start; scalar_t__ sb_dirband_size; scalar_t__ sb_dmap; int sb_mode; int sb_n_free; int sb_n_free_dnodes; int sb_lowercase; int sb_conv; int sb_eas; int sb_chk; int sb_chkdsk; int sb_err; int sb_timeshift; int sb_c_bitmap; int sb_max_fwd_alloc; struct hpfs_sb_info* sb_cp_table; struct hpfs_sb_info* sb_bmp_dir; int sb_root; scalar_t__ sb_was_error; int sb_gid; int sb_uid; int hpfs_creation_de; } ;
struct hpfs_dirent {int ea_size; int creation_date; int write_date; int read_date; } ;
struct hpfs_boot_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int gid_t ;
typedef scalar_t__ dnode_secno ;
struct TYPE_8__ {int i_parent_dir; int i_ea_size; } ;


 int CONV_BINARY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HPFS_SUPER_MAGIC ;
 int MS_NOATIME ;
 int MS_RDONLY ;
 scalar_t__ SB_MAGIC ;
 scalar_t__ SP_MAGIC ;
 int brelse (struct buffer_head*) ;
 int current_gid () ;
 int current_uid () ;
 int current_umask () ;
 int d_alloc_root (struct inode*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 scalar_t__ hpfs_chk_sectors (struct super_block*,scalar_t__,int,char*) ;
 int hpfs_error (struct super_block*,char*,...) ;
 scalar_t__ hpfs_fnode_dno (struct super_block*,int ) ;
 int hpfs_help () ;
 TYPE_4__* hpfs_i (struct inode*) ;
 int hpfs_init_inode (struct inode*) ;
 struct hpfs_sb_info* hpfs_load_bitmap_directory (struct super_block*,scalar_t__) ;
 struct hpfs_sb_info* hpfs_load_code_page (struct super_block*,int ) ;
 void* hpfs_map_sector (struct super_block*,int,struct buffer_head**,int) ;
 int hpfs_read_inode (struct inode*) ;
 int hpfs_set_dentry_operations (int ) ;
 int hpfs_sops ;
 struct inode* iget_locked (struct super_block*,int ) ;
 int init_MUTEX (int *) ;
 int iput (struct inode*) ;
 int kfree (struct hpfs_sb_info*) ;
 struct hpfs_sb_info* kzalloc (int,int ) ;
 void* local_to_gmt (struct super_block*,int ) ;
 struct hpfs_dirent* map_dirent (struct inode*,scalar_t__,char*,int,int *,struct quad_buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mark_dirty (struct super_block*) ;
 int parse_opts (void*,int *,int *,int*,int*,int*,int*,int*,int*,int*,int*) ;
 int printk (char*,...) ;
 int save_mount_options (struct super_block*,void*) ;
 int sb_set_blocksize (struct super_block*,int) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int hpfs_fill_super(struct super_block *s, void *options, int silent)
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
 struct hpfs_dirent *de = ((void*)0);
 struct quad_buffer_head qbh;

 int o;

 save_mount_options(s, options);

 sbi = kzalloc(sizeof(*sbi), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;
 s->s_fs_info = sbi;

 sbi->sb_bmp_dir = ((void*)0);
 sbi->sb_cp_table = ((void*)0);

 init_MUTEX(&sbi->hpfs_creation_de);

 uid = current_uid();
 gid = current_gid();
 umask = current_umask();
 lowercase = 0;
 conv = CONV_BINARY;
 eas = 2;
 chk = 1;
 errs = 1;
 chkdsk = 1;
 timeshift = 0;

 if (!(o = parse_opts(options, &uid, &gid, &umask, &lowercase, &conv,
     &eas, &chk, &errs, &chkdsk, &timeshift))) {
  printk("HPFS: bad mount options.\n");
  goto bail0;
 }
 if (o==2) {
  hpfs_help();
  goto bail0;
 }


 sb_set_blocksize(s, 512);
 sbi->sb_fs_size = -1;
 if (!(bootblock = hpfs_map_sector(s, 0, &bh0, 0))) goto bail1;
 if (!(superblock = hpfs_map_sector(s, 16, &bh1, 1))) goto bail2;
 if (!(spareblock = hpfs_map_sector(s, 17, &bh2, 0))) goto bail3;


 if ( superblock->magic != SB_MAGIC

     || spareblock->magic != SP_MAGIC) {
  if (!silent) printk("HPFS: Bad magic ... probably not HPFS\n");
  goto bail4;
 }


 if (!(s->s_flags & MS_RDONLY) &&
       superblock->funcversion != 2 && superblock->funcversion != 3) {
  printk("HPFS: Bad version %d,%d. Mount readonly to go around\n",
   (int)superblock->version, (int)superblock->funcversion);
  printk("HPFS: please try recent version of HPFS driver at http://artax.karlin.mff.cuni.cz/~mikulas/vyplody/hpfs/index-e.cgi and if it still can't understand this format, contact author - mikulas@artax.karlin.mff.cuni.cz\n");
  goto bail4;
 }

 s->s_flags |= MS_NOATIME;


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
 sbi->sb_cp_table = ((void*)0);
 sbi->sb_c_bitmap = -1;
 sbi->sb_max_fwd_alloc = 0xffffff;


 if (!(sbi->sb_bmp_dir = hpfs_load_bitmap_directory(s, superblock->bitmaps)))
  goto bail4;


 if (spareblock->dirty && !spareblock->old_wrote) {
  if (errs == 2) {
   printk("HPFS: Improperly stopped, not mounted\n");
   goto bail4;
  }
  hpfs_error(s, "improperly stopped");
 }

 if (!(s->s_flags & MS_RDONLY)) {
  spareblock->dirty = 1;
  spareblock->old_wrote = 0;
  mark_buffer_dirty(bh2);
 }

 if (spareblock->hotfixes_used || spareblock->n_spares_used) {
  if (errs >= 2) {
   printk("HPFS: Hotfixes not supported here, try chkdsk\n");
   mark_dirty(s);
   goto bail4;
  }
  hpfs_error(s, "hotfixes not supported here, try chkdsk");
  if (errs == 0) printk("HPFS: Proceeding, but your filesystem will be probably corrupted by this driver...\n");
  else printk("HPFS: This driver may read bad files or crash when operating on disk with hotfixes.\n");
 }
 if (spareblock->n_dnode_spares != spareblock->n_dnode_spares_free) {
  if (errs >= 2) {
   printk("HPFS: Spare dnodes used, try chkdsk\n");
   mark_dirty(s);
   goto bail4;
  }
  hpfs_error(s, "warning: spare dnodes used, try chkdsk");
  if (errs == 0) printk("HPFS: Proceeding, but your filesystem could be corrupted if you delete files or directories\n");
 }
 if (chk) {
  unsigned a;
  if (superblock->dir_band_end - superblock->dir_band_start + 1 != superblock->n_dir_band ||
      superblock->dir_band_end < superblock->dir_band_start || superblock->n_dir_band > 0x4000) {
   hpfs_error(s, "dir band size mismatch: dir_band_start==%08x, dir_band_end==%08x, n_dir_band==%08x",
    superblock->dir_band_start, superblock->dir_band_end, superblock->n_dir_band);
   goto bail4;
  }
  a = sbi->sb_dirband_size;
  sbi->sb_dirband_size = 0;
  if (hpfs_chk_sectors(s, superblock->dir_band_start, superblock->n_dir_band, "dir_band") ||
      hpfs_chk_sectors(s, superblock->dir_band_bitmap, 4, "dir_band_bitmap") ||
      hpfs_chk_sectors(s, superblock->bitmaps, 4, "bitmaps")) {
   mark_dirty(s);
   goto bail4;
  }
  sbi->sb_dirband_size = a;
 } else printk("HPFS: You really don't want any checks? You are crazy...\n");


 if (spareblock->n_code_pages)
  if (!(sbi->sb_cp_table = hpfs_load_code_page(s, spareblock->code_page_dir)))
   printk("HPFS: Warning: code page support is disabled\n");

 brelse(bh2);
 brelse(bh1);
 brelse(bh0);

 root = iget_locked(s, sbi->sb_root);
 if (!root)
  goto bail0;
 hpfs_init_inode(root);
 hpfs_read_inode(root);
 unlock_new_inode(root);
 s->s_root = d_alloc_root(root);
 if (!s->s_root) {
  iput(root);
  goto bail0;
 }
 hpfs_set_dentry_operations(s->s_root);





 root_dno = hpfs_fnode_dno(s, sbi->sb_root);
 if (root_dno)
  de = map_dirent(root, root_dno, "\001\001", 2, ((void*)0), &qbh);
 if (!de)
  hpfs_error(s, "unable to find root dir");
 else {
  root->i_atime.tv_sec = local_to_gmt(s, de->read_date);
  root->i_atime.tv_nsec = 0;
  root->i_mtime.tv_sec = local_to_gmt(s, de->write_date);
  root->i_mtime.tv_nsec = 0;
  root->i_ctime.tv_sec = local_to_gmt(s, de->creation_date);
  root->i_ctime.tv_nsec = 0;
  hpfs_i(root)->i_ea_size = de->ea_size;
  hpfs_i(root)->i_parent_dir = root->i_ino;
  if (root->i_size == -1)
   root->i_size = 2048;
  if (root->i_blocks == -1)
   root->i_blocks = 5;
  hpfs_brelse4(&qbh);
 }
 return 0;

bail4: brelse(bh2);
bail3: brelse(bh1);
bail2: brelse(bh0);
bail1:
bail0:
 kfree(sbi->sb_bmp_dir);
 kfree(sbi->sb_cp_table);
 s->s_fs_info = ((void*)0);
 kfree(sbi);
 return -EINVAL;
}
