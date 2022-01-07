
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_5__ {scalar_t__ sb_sectsize; } ;
struct TYPE_6__ {TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;


 int KM_SLEEP ;
 int XFS_DEFAULT_LOG_COUNT ;
 int XFS_SB_UUID ;
 int XFS_TRANS_DUMMY1 ;
 int * _xfs_trans_alloc (TYPE_2__*,int ,int ) ;
 int xfs_mod_sb (int *,int ) ;
 int xfs_trans_cancel (int *,int ) ;
 int xfs_trans_commit (int *,int ) ;
 int xfs_trans_reserve (int *,int ,scalar_t__,int ,int ,int ) ;
 int xfs_trans_set_sync (int *) ;

int
xfs_fs_log_dummy(
 xfs_mount_t *mp)
{
 xfs_trans_t *tp;
 int error;

 tp = _xfs_trans_alloc(mp, XFS_TRANS_DUMMY1, KM_SLEEP);
 error = xfs_trans_reserve(tp, 0, mp->m_sb.sb_sectsize + 128, 0, 0,
     XFS_DEFAULT_LOG_COUNT);
 if (error) {
  xfs_trans_cancel(tp, 0);
  return error;
 }


 xfs_mod_sb(tp, XFS_SB_UUID);
 xfs_trans_set_sync(tp);
 return xfs_trans_commit(tp, 0);
}
