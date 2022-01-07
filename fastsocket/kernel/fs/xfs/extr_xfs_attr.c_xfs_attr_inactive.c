
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_12__ {scalar_t__ di_aformat; } ;
struct TYPE_13__ {TYPE_1__ i_d; int * i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;


 int ASSERT (int) ;
 int XFS_ATTRINVAL_LOG_COUNT ;
 int XFS_ATTRINVAL_LOG_RES (int *) ;
 int XFS_ATTR_FORK ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int XFS_ILOG_CORE ;
 int XFS_NOT_DQATTACHED (int *,TYPE_2__*) ;
 int XFS_TRANS_ABORT ;
 int XFS_TRANS_ATTRINVAL ;
 int XFS_TRANS_PERM_LOG_RES ;
 int XFS_TRANS_RELEASE_LOG_RES ;
 int xfs_attr_root_inactive (int **,TYPE_2__*) ;
 int xfs_ilock (TYPE_2__*,int ) ;
 int xfs_inode_hasattr (TYPE_2__*) ;
 int xfs_itruncate_finish (int **,TYPE_2__*,long long,int ) ;
 int xfs_iunlock (TYPE_2__*,int ) ;
 int * xfs_trans_alloc (int *,int ) ;
 int xfs_trans_cancel (int *,int) ;
 int xfs_trans_commit (int *,int) ;
 int xfs_trans_ijoin (int *,TYPE_2__*) ;
 int xfs_trans_log_inode (int *,TYPE_2__*,int ) ;
 int xfs_trans_reserve (int *,int ,int ,int ,int ,int ) ;

int
xfs_attr_inactive(xfs_inode_t *dp)
{
 xfs_trans_t *trans;
 xfs_mount_t *mp;
 int error;

 mp = dp->i_mount;
 ASSERT(! XFS_NOT_DQATTACHED(mp, dp));

 xfs_ilock(dp, XFS_ILOCK_SHARED);
 if (!xfs_inode_hasattr(dp) ||
     dp->i_d.di_aformat == XFS_DINODE_FMT_LOCAL) {
  xfs_iunlock(dp, XFS_ILOCK_SHARED);
  return 0;
 }
 xfs_iunlock(dp, XFS_ILOCK_SHARED);
 trans = xfs_trans_alloc(mp, XFS_TRANS_ATTRINVAL);
 if ((error = xfs_trans_reserve(trans, 0, XFS_ATTRINVAL_LOG_RES(mp), 0,
          XFS_TRANS_PERM_LOG_RES,
          XFS_ATTRINVAL_LOG_COUNT))) {
  xfs_trans_cancel(trans, 0);
  return(error);
 }
 xfs_ilock(dp, XFS_ILOCK_EXCL);





 xfs_trans_ijoin(trans, dp);




 if (!xfs_inode_hasattr(dp) ||
     dp->i_d.di_aformat == XFS_DINODE_FMT_LOCAL) {
  error = 0;
  goto out;
 }
 error = xfs_attr_root_inactive(&trans, dp);
 if (error)
  goto out;

 error = xfs_itruncate_finish(&trans, dp, 0LL, XFS_ATTR_FORK);
 if (error)
  goto out;




 xfs_trans_log_inode(trans, dp, XFS_ILOG_CORE);
 error = xfs_trans_commit(trans, XFS_TRANS_RELEASE_LOG_RES);
 xfs_iunlock(dp, XFS_ILOCK_EXCL);

 return(error);

out:
 xfs_trans_cancel(trans, XFS_TRANS_RELEASE_LOG_RES|XFS_TRANS_ABORT);
 xfs_iunlock(dp, XFS_ILOCK_EXCL);
 return(error);
}
