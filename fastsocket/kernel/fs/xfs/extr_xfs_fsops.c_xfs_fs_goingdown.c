
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* m_super; } ;
typedef TYPE_2__ xfs_mount_t ;
struct super_block {int s_bdev; } ;
typedef int __uint32_t ;
struct TYPE_5__ {int s_bdev; } ;


 int EINVAL ;
 int IS_ERR (struct super_block*) ;
 int SHUTDOWN_FORCE_UMOUNT ;
 int SHUTDOWN_LOG_IO_ERROR ;
 int XFS_ERROR (int ) ;



 struct super_block* freeze_bdev (int ) ;
 int thaw_bdev (int ,struct super_block*) ;
 int xfs_force_shutdown (TYPE_2__*,int) ;

int
xfs_fs_goingdown(
 xfs_mount_t *mp,
 __uint32_t inflags)
{
 switch (inflags) {
 case 130: {
  struct super_block *sb = freeze_bdev(mp->m_super->s_bdev);

  if (sb && !IS_ERR(sb)) {
   xfs_force_shutdown(mp, SHUTDOWN_FORCE_UMOUNT);
   thaw_bdev(sb->s_bdev, sb);
  }

  break;
 }
 case 129:
  xfs_force_shutdown(mp, SHUTDOWN_FORCE_UMOUNT);
  break;
 case 128:
  xfs_force_shutdown(mp,
    SHUTDOWN_FORCE_UMOUNT | SHUTDOWN_LOG_IO_ERROR);
  break;
 default:
  return XFS_ERROR(EINVAL);
 }

 return 0;
}
