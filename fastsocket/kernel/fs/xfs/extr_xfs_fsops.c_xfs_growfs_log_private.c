
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sb_logblocks; scalar_t__ sb_logstart; } ;
struct TYPE_8__ {TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_9__ {scalar_t__ newblocks; int isint; } ;
typedef TYPE_3__ xfs_growfs_log_t ;
typedef scalar_t__ xfs_extlen_t ;


 int EINVAL ;
 int ENOSYS ;
 scalar_t__ XFS_B_TO_FSB (TYPE_2__*,int ) ;
 int XFS_ERROR (int ) ;
 scalar_t__ XFS_MIN_LOG_BLOCKS ;
 int XFS_MIN_LOG_BYTES ;

__attribute__((used)) static int
xfs_growfs_log_private(
 xfs_mount_t *mp,
 xfs_growfs_log_t *in)
{
 xfs_extlen_t nb;

 nb = in->newblocks;
 if (nb < XFS_MIN_LOG_BLOCKS || nb < XFS_B_TO_FSB(mp, XFS_MIN_LOG_BYTES))
  return XFS_ERROR(EINVAL);
 if (nb == mp->m_sb.sb_logblocks &&
     in->isint == (mp->m_sb.sb_logstart != 0))
  return XFS_ERROR(EINVAL);






 return XFS_ERROR(ENOSYS);
}
