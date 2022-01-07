
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_8__ {scalar_t__ di_nlink; int di_version; } ;
struct TYPE_9__ {TYPE_1__ i_d; } ;
typedef TYPE_2__ xfs_inode_t ;


 int ASSERT (int) ;
 int EMLINK ;
 int VFS_I (TYPE_2__*) ;
 int XFS_ERROR (int ) ;
 int XFS_ICHGTIME_CHG ;
 int XFS_ILOG_CORE ;
 scalar_t__ XFS_MAXLINK ;
 scalar_t__ XFS_MAXLINK_1 ;
 int inc_nlink (int ) ;
 int xfs_bump_ino_vers2 (int *,TYPE_2__*) ;
 int xfs_trans_ichgtime (int *,TYPE_2__*,int ) ;
 int xfs_trans_log_inode (int *,TYPE_2__*,int ) ;

int
xfs_bumplink(
 xfs_trans_t *tp,
 xfs_inode_t *ip)
{
 if (ip->i_d.di_nlink >= XFS_MAXLINK)
  return XFS_ERROR(EMLINK);
 xfs_trans_ichgtime(tp, ip, XFS_ICHGTIME_CHG);

 ASSERT(ip->i_d.di_nlink > 0);
 ip->i_d.di_nlink++;
 inc_nlink(VFS_I(ip));
 if ((ip->i_d.di_version == 1) &&
     (ip->i_d.di_nlink > XFS_MAXLINK_1)) {
  xfs_bump_ino_vers2(tp, ip);
 }

 xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);
 return 0;
}
