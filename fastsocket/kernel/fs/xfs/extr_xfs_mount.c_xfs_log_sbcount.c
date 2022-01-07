
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_8__ {scalar_t__ sb_sectsize; } ;
struct TYPE_7__ {TYPE_2__ m_sb; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef scalar_t__ uint ;


 int KM_SLEEP ;
 int XFS_DEFAULT_LOG_COUNT ;
 int XFS_SB_FDBLOCKS ;
 int XFS_SB_ICOUNT ;
 int XFS_SB_IFREE ;
 int XFS_TRANS_SB_COUNT ;
 int * _xfs_trans_alloc (TYPE_1__*,int ,int ) ;
 int xfs_fs_writable (TYPE_1__*) ;
 int xfs_icsb_sync_counters (TYPE_1__*,int ) ;
 int xfs_mod_sb (int *,int) ;
 int xfs_sb_version_haslazysbcount (TYPE_2__*) ;
 int xfs_trans_cancel (int *,int ) ;
 int xfs_trans_commit (int *,int ) ;
 int xfs_trans_reserve (int *,int ,scalar_t__,int ,int ,int ) ;
 int xfs_trans_set_sync (int *) ;

int
xfs_log_sbcount(
 xfs_mount_t *mp,
 uint sync)
{
 xfs_trans_t *tp;
 int error;

 if (!xfs_fs_writable(mp))
  return 0;

 xfs_icsb_sync_counters(mp, 0);





 if (!xfs_sb_version_haslazysbcount(&mp->m_sb))
  return 0;

 tp = _xfs_trans_alloc(mp, XFS_TRANS_SB_COUNT, KM_SLEEP);
 error = xfs_trans_reserve(tp, 0, mp->m_sb.sb_sectsize + 128, 0, 0,
     XFS_DEFAULT_LOG_COUNT);
 if (error) {
  xfs_trans_cancel(tp, 0);
  return error;
 }

 xfs_mod_sb(tp, XFS_SB_IFREE | XFS_SB_ICOUNT | XFS_SB_FDBLOCKS);
 if (sync)
  xfs_trans_set_sync(tp);
 error = xfs_trans_commit(tp, 0);
 return error;
}
