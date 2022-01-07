
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct super_block {int s_magic; TYPE_1__* s_bdev; } ;
struct TYPE_4__ {void** val; } ;
struct kstatfs {int f_bsize; int f_files; int f_namelen; TYPE_2__ f_fsid; int f_ffree; int f_bavail; int f_bfree; int f_blocks; int f_type; } ;
struct hpfs_sb_info {int sb_dirband_size; int sb_n_free_dnodes; int sb_n_free; int sb_fs_size; int sb_dmap; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_3__ {int bd_dev; } ;


 int count_bitmaps (struct super_block*) ;
 int hpfs_count_one_bitmap (struct super_block*,int ) ;
 struct hpfs_sb_info* hpfs_sb (struct super_block*) ;
 int huge_encode_dev (int ) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int hpfs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *s = dentry->d_sb;
 struct hpfs_sb_info *sbi = hpfs_sb(s);
 u64 id = huge_encode_dev(s->s_bdev->bd_dev);
 lock_kernel();


  sbi->sb_n_free = count_bitmaps(s);
  sbi->sb_n_free_dnodes = hpfs_count_one_bitmap(s, sbi->sb_dmap);

 buf->f_type = s->s_magic;
 buf->f_bsize = 512;
 buf->f_blocks = sbi->sb_fs_size;
 buf->f_bfree = sbi->sb_n_free;
 buf->f_bavail = sbi->sb_n_free;
 buf->f_files = sbi->sb_dirband_size / 4;
 buf->f_ffree = sbi->sb_n_free_dnodes;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);
 buf->f_namelen = 254;

 unlock_kernel();

 return 0;
}
