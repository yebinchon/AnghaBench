
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_7__ {int di_dmstate; int di_dmevmask; } ;
struct TYPE_8__ {TYPE_1__ i_d; int * i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef int u_int16_t ;
typedef int u_int ;


 int CAP_SYS_ADMIN ;
 int EIO ;
 int EPERM ;
 int XFS_ERROR (int ) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int *) ;
 int XFS_ICHANGE_LOG_RES (int *) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int XFS_TRANS_SET_DMATTRS ;
 int capable (int ) ;
 int xfs_ilock (TYPE_2__*,int ) ;
 int * xfs_trans_alloc (int *,int ) ;
 int xfs_trans_cancel (int *,int ) ;
 int xfs_trans_commit (int *,int ) ;
 int xfs_trans_ijoin_ref (int *,TYPE_2__*,int ) ;
 int xfs_trans_log_inode (int *,TYPE_2__*,int ) ;
 int xfs_trans_reserve (int *,int ,int ,int ,int ,int ) ;

int
xfs_set_dmattrs(
 xfs_inode_t *ip,
 u_int evmask,
 u_int16_t state)
{
 xfs_mount_t *mp = ip->i_mount;
 xfs_trans_t *tp;
 int error;

 if (!capable(CAP_SYS_ADMIN))
  return XFS_ERROR(EPERM);

 if (XFS_FORCED_SHUTDOWN(mp))
  return XFS_ERROR(EIO);

 tp = xfs_trans_alloc(mp, XFS_TRANS_SET_DMATTRS);
 error = xfs_trans_reserve(tp, 0, XFS_ICHANGE_LOG_RES (mp), 0, 0, 0);
 if (error) {
  xfs_trans_cancel(tp, 0);
  return error;
 }
 xfs_ilock(ip, XFS_ILOCK_EXCL);
 xfs_trans_ijoin_ref(tp, ip, XFS_ILOCK_EXCL);

 ip->i_d.di_dmevmask = evmask;
 ip->i_d.di_dmstate = state;

 xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);
 error = xfs_trans_commit(tp, 0);

 return error;
}
