
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


struct TYPE_9__ {int cs_nffree; int cs_nifree; } ;
struct TYPE_10__ {TYPE_3__ fs_u2; } ;
struct ufs_super_block_third {TYPE_4__ fs_un1; } ;
struct TYPE_7__ {int cs_nbfree; int cs_ndir; } ;
struct TYPE_8__ {TYPE_1__ fs_u2; } ;
struct ufs_super_block_second {TYPE_2__ fs_un; } ;
struct TYPE_12__ {int cs_nffree; int cs_nifree; int cs_nbfree; int cs_ndir; } ;
struct ufs_super_block_first {int fs_flags; TYPE_6__ fs_cstotal; } ;
struct TYPE_11__ {void* cs_nffree; void* cs_nifree; void* cs_nbfree; void* cs_ndir; } ;
struct ufs_sb_private_info {TYPE_5__ cs_total; } ;
struct ufs_sb_info {unsigned int s_mount_opt; struct ufs_sb_private_info* s_uspi; } ;
struct super_block {int dummy; } ;


 int UFSD (char*,...) ;
 int UFS_FLAGS_UPDATED ;
 unsigned int UFS_MOUNT_UFSTYPE ;
 unsigned int UFS_MOUNT_UFSTYPE_44BSD ;
 unsigned int UFS_MOUNT_UFSTYPE_UFS2 ;
 struct ufs_sb_info* UFS_SB (struct super_block*) ;
 void* fs32_to_cpu (struct super_block*,int ) ;
 void* fs64_to_cpu (struct super_block*,int ) ;
 struct ufs_super_block_first* ubh_get_usb_first (struct ufs_sb_private_info*) ;
 struct ufs_super_block_second* ubh_get_usb_second (struct ufs_sb_private_info*) ;
 struct ufs_super_block_third* ubh_get_usb_third (struct ufs_sb_private_info*) ;

__attribute__((used)) static void ufs_setup_cstotal(struct super_block *sb)
{
 struct ufs_sb_info *sbi = UFS_SB(sb);
 struct ufs_sb_private_info *uspi = sbi->s_uspi;
 struct ufs_super_block_first *usb1;
 struct ufs_super_block_second *usb2;
 struct ufs_super_block_third *usb3;
 unsigned mtype = sbi->s_mount_opt & UFS_MOUNT_UFSTYPE;

 UFSD("ENTER, mtype=%u\n", mtype);
 usb1 = ubh_get_usb_first(uspi);
 usb2 = ubh_get_usb_second(uspi);
 usb3 = ubh_get_usb_third(uspi);

 if ((mtype == UFS_MOUNT_UFSTYPE_44BSD &&
      (usb1->fs_flags & UFS_FLAGS_UPDATED)) ||
     mtype == UFS_MOUNT_UFSTYPE_UFS2) {

  uspi->cs_total.cs_ndir = fs64_to_cpu(sb, usb2->fs_un.fs_u2.cs_ndir);
  uspi->cs_total.cs_nbfree = fs64_to_cpu(sb, usb2->fs_un.fs_u2.cs_nbfree);
  uspi->cs_total.cs_nifree = fs64_to_cpu(sb, usb3->fs_un1.fs_u2.cs_nifree);
  uspi->cs_total.cs_nffree = fs64_to_cpu(sb, usb3->fs_un1.fs_u2.cs_nffree);
 } else {
  uspi->cs_total.cs_ndir = fs32_to_cpu(sb, usb1->fs_cstotal.cs_ndir);
  uspi->cs_total.cs_nbfree = fs32_to_cpu(sb, usb1->fs_cstotal.cs_nbfree);
  uspi->cs_total.cs_nifree = fs32_to_cpu(sb, usb1->fs_cstotal.cs_nifree);
  uspi->cs_total.cs_nffree = fs32_to_cpu(sb, usb1->fs_cstotal.cs_nffree);
 }
 UFSD("EXIT\n");
}
