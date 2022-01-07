
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_inode {int dummy; } ;


 int XFS_ILOCK_EXCL ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xfs_qm_dqattach_locked (struct xfs_inode*,int ) ;
 int xfs_qm_need_dqattach (struct xfs_inode*) ;

int
xfs_qm_dqattach(
 struct xfs_inode *ip,
 uint flags)
{
 int error;

 if (!xfs_qm_need_dqattach(ip))
  return 0;

 xfs_ilock(ip, XFS_ILOCK_EXCL);
 error = xfs_qm_dqattach_locked(ip, flags);
 xfs_iunlock(ip, XFS_ILOCK_EXCL);

 return error;
}
