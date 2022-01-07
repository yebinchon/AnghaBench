
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {scalar_t__ m_rtdev_targp; int m_ddev_targp; } ;


 int SYNC_TRYLOCK ;
 int SYNC_WAIT ;
 int XFS_bflush (scalar_t__) ;
 int xfs_flush_buftarg (int ,int) ;
 int xfs_fs_log_dummy (struct xfs_mount*) ;
 int xfs_qm_sync (struct xfs_mount*,int ) ;
 int xfs_sync_data (struct xfs_mount*,int ) ;
 int xfs_sync_fsdata (struct xfs_mount*) ;

int
xfs_quiesce_data(
 struct xfs_mount *mp)
{
 int error, error2 = 0;


 xfs_sync_data(mp, 0);
 xfs_qm_sync(mp, SYNC_TRYLOCK);


 xfs_sync_data(mp, SYNC_WAIT);

 xfs_qm_sync(mp, SYNC_WAIT);


 error = xfs_sync_fsdata(mp);


 xfs_flush_buftarg(mp->m_ddev_targp, 1);


 error2 = xfs_fs_log_dummy(mp);


 if (mp->m_rtdev_targp)
  XFS_bflush(mp->m_rtdev_targp);

 return error ? error : error2;
}
