
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_super_block_third {int dummy; } ;
struct ufs_super_block_first {int fs_time; } ;
struct ufs_sb_private_info {int dummy; } ;
struct super_block {int s_flags; scalar_t__ s_dirt; } ;
struct TYPE_2__ {unsigned int s_flags; unsigned int s_mount_opt; struct ufs_sb_private_info* s_uspi; } ;


 int EINVAL ;
 int EPERM ;
 int MS_RDONLY ;
 int ONERROR_LOCK ;
 scalar_t__ UFS_FSOK ;
 unsigned int UFS_MOUNT_UFSTYPE ;
 unsigned int UFS_MOUNT_UFSTYPE_44BSD ;
 unsigned int UFS_MOUNT_UFSTYPE_SUN ;
 unsigned int UFS_MOUNT_UFSTYPE_SUNOS ;
 unsigned int UFS_MOUNT_UFSTYPE_SUNx86 ;
 unsigned int UFS_MOUNT_UFSTYPE_UFS2 ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 unsigned int UFS_ST_MASK ;
 unsigned int UFS_ST_SUN ;
 unsigned int UFS_ST_SUNOS ;
 unsigned int UFS_ST_SUNx86 ;
 int USPI_UBH (struct ufs_sb_private_info*) ;
 int cpu_to_fs32 (struct super_block*,int ) ;
 scalar_t__ fs32_to_cpu (struct super_block*,int ) ;
 int get_seconds () ;
 int lock_kernel () ;
 int lock_super (struct super_block*) ;
 int printk (char*) ;
 struct ufs_super_block_first* ubh_get_usb_first (struct ufs_sb_private_info*) ;
 struct ufs_super_block_third* ubh_get_usb_third (struct ufs_sb_private_info*) ;
 int ubh_mark_buffer_dirty (int ) ;
 int ufs_parse_options (char*,unsigned int*) ;
 int ufs_put_super_internal (struct super_block*) ;
 int ufs_read_cylinder_structures (struct super_block*) ;
 int ufs_set_fs_state (struct super_block*,struct ufs_super_block_first*,struct ufs_super_block_third*,scalar_t__) ;
 int ufs_set_opt (unsigned int,int ) ;
 int unlock_kernel () ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static int ufs_remount (struct super_block *sb, int *mount_flags, char *data)
{
 struct ufs_sb_private_info * uspi;
 struct ufs_super_block_first * usb1;
 struct ufs_super_block_third * usb3;
 unsigned new_mount_opt, ufstype;
 unsigned flags;

 lock_kernel();
 lock_super(sb);
 uspi = UFS_SB(sb)->s_uspi;
 flags = UFS_SB(sb)->s_flags;
 usb1 = ubh_get_usb_first(uspi);
 usb3 = ubh_get_usb_third(uspi);





 ufstype = UFS_SB(sb)->s_mount_opt & UFS_MOUNT_UFSTYPE;
 new_mount_opt = 0;
 ufs_set_opt (new_mount_opt, ONERROR_LOCK);
 if (!ufs_parse_options (data, &new_mount_opt)) {
  unlock_super(sb);
  unlock_kernel();
  return -EINVAL;
 }
 if (!(new_mount_opt & UFS_MOUNT_UFSTYPE)) {
  new_mount_opt |= ufstype;
 } else if ((new_mount_opt & UFS_MOUNT_UFSTYPE) != ufstype) {
  printk("ufstype can't be changed during remount\n");
  unlock_super(sb);
  unlock_kernel();
  return -EINVAL;
 }

 if ((*mount_flags & MS_RDONLY) == (sb->s_flags & MS_RDONLY)) {
  UFS_SB(sb)->s_mount_opt = new_mount_opt;
  unlock_super(sb);
  unlock_kernel();
  return 0;
 }




 if (*mount_flags & MS_RDONLY) {
  ufs_put_super_internal(sb);
  usb1->fs_time = cpu_to_fs32(sb, get_seconds());
  if ((flags & UFS_ST_MASK) == UFS_ST_SUN
    || (flags & UFS_ST_MASK) == UFS_ST_SUNOS
    || (flags & UFS_ST_MASK) == UFS_ST_SUNx86)
   ufs_set_fs_state(sb, usb1, usb3,
    UFS_FSOK - fs32_to_cpu(sb, usb1->fs_time));
  ubh_mark_buffer_dirty (USPI_UBH(uspi));
  sb->s_dirt = 0;
  sb->s_flags |= MS_RDONLY;
 } else {




  printk("ufs was compiled with read-only support, "
  "can't be mounted as read-write\n");
  unlock_super(sb);
  unlock_kernel();
  return -EINVAL;
 }
 UFS_SB(sb)->s_mount_opt = new_mount_opt;
 unlock_super(sb);
 unlock_kernel();
 return 0;
}
