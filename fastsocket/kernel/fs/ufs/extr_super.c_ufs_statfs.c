
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct TYPE_8__ {int fs_dsize; } ;
struct TYPE_9__ {TYPE_2__ fs_u2; } ;
struct ufs_super_block_third {TYPE_3__ fs_un1; } ;
struct ufs_super_block_second {int dummy; } ;
struct ufs_super_block_first {int dummy; } ;
struct TYPE_10__ {long cs_nffree; int cs_nifree; int cs_nbfree; } ;
struct ufs_sb_private_info {long s_minfree; int s_ncg; int s_ipg; TYPE_4__ cs_total; scalar_t__ s_dsize; } ;
struct super_block {int s_blocksize; TYPE_1__* s_bdev; } ;
struct TYPE_11__ {void** val; } ;
struct kstatfs {long f_bfree; long f_bavail; int f_files; TYPE_5__ f_fsid; int f_namelen; scalar_t__ f_blocks; int f_bsize; int f_ffree; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_12__ {unsigned int s_flags; struct ufs_sb_private_info* s_uspi; } ;
struct TYPE_7__ {int bd_dev; } ;


 int UFS2_MAGIC ;
 int UFS_MAGIC ;
 int UFS_MAXNAMLEN ;
 TYPE_6__* UFS_SB (struct super_block*) ;
 unsigned int UFS_TYPE_MASK ;
 unsigned int UFS_TYPE_UFS2 ;
 scalar_t__ fs64_to_cpu (struct super_block*,int ) ;
 int huge_encode_dev (int ) ;
 int lock_kernel () ;
 struct ufs_super_block_first* ubh_get_usb_first (struct ufs_sb_private_info*) ;
 struct ufs_super_block_second* ubh_get_usb_second (struct ufs_sb_private_info*) ;
 struct ufs_super_block_third* ubh_get_usb_third (struct ufs_sb_private_info*) ;
 long ufs_blkstofrags (int ) ;
 int unlock_kernel () ;

__attribute__((used)) static int ufs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 struct ufs_sb_private_info *uspi= UFS_SB(sb)->s_uspi;
 unsigned flags = UFS_SB(sb)->s_flags;
 struct ufs_super_block_first *usb1;
 struct ufs_super_block_second *usb2;
 struct ufs_super_block_third *usb3;
 u64 id = huge_encode_dev(sb->s_bdev->bd_dev);

 lock_kernel();

 usb1 = ubh_get_usb_first(uspi);
 usb2 = ubh_get_usb_second(uspi);
 usb3 = ubh_get_usb_third(uspi);

 if ((flags & UFS_TYPE_MASK) == UFS_TYPE_UFS2) {
  buf->f_type = UFS2_MAGIC;
  buf->f_blocks = fs64_to_cpu(sb, usb3->fs_un1.fs_u2.fs_dsize);
 } else {
  buf->f_type = UFS_MAGIC;
  buf->f_blocks = uspi->s_dsize;
 }
 buf->f_bfree = ufs_blkstofrags(uspi->cs_total.cs_nbfree) +
  uspi->cs_total.cs_nffree;
 buf->f_ffree = uspi->cs_total.cs_nifree;
 buf->f_bsize = sb->s_blocksize;
 buf->f_bavail = (buf->f_bfree > (((long)buf->f_blocks / 100) * uspi->s_minfree))
  ? (buf->f_bfree - (((long)buf->f_blocks / 100) * uspi->s_minfree)) : 0;
 buf->f_files = uspi->s_ncg * uspi->s_ipg;
 buf->f_namelen = UFS_MAXNAMLEN;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);

 unlock_kernel();

 return 0;
}
