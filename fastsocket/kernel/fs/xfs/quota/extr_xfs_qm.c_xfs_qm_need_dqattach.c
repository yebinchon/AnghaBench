
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sb_uquotino; scalar_t__ sb_gquotino; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_inode {scalar_t__ i_ino; struct xfs_mount* i_mount; } ;


 int XFS_IS_QUOTA_ON (struct xfs_mount*) ;
 int XFS_IS_QUOTA_RUNNING (struct xfs_mount*) ;
 int XFS_NOT_DQATTACHED (struct xfs_mount*,struct xfs_inode*) ;

__attribute__((used)) static bool
xfs_qm_need_dqattach(
 struct xfs_inode *ip)
{
 struct xfs_mount *mp = ip->i_mount;

 if (!XFS_IS_QUOTA_RUNNING(mp))
  return 0;
 if (!XFS_IS_QUOTA_ON(mp))
  return 0;
 if (!XFS_NOT_DQATTACHED(mp, ip))
  return 0;
 if (ip->i_ino == mp->m_sb.sb_uquotino ||
     ip->i_ino == mp->m_sb.sb_gquotino)
  return 0;
 return 1;
}
