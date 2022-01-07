
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_ddev_targp; int m_rootip; } ;
typedef scalar_t__ __uint64_t ;


 int IRELE (int ) ;
 int SYNC_WAIT ;
 int XFS_LOG_SYNC ;
 int XFS_bflush (int ) ;
 int xfs_errortag_clearall (struct xfs_mount*,int ) ;
 int xfs_flush_buftarg (int ,int) ;
 int xfs_free_perag (struct xfs_mount*) ;
 int xfs_log_force (struct xfs_mount*,int ) ;
 int xfs_log_sbcount (struct xfs_mount*,int) ;
 int xfs_log_unmount (struct xfs_mount*) ;
 int xfs_log_unmount_write (struct xfs_mount*) ;
 int xfs_qm_unmount (struct xfs_mount*) ;
 int xfs_qm_unmount_quotas (struct xfs_mount*) ;
 int xfs_reclaim_inodes (struct xfs_mount*,int ) ;
 int xfs_reserve_blocks (struct xfs_mount*,scalar_t__*,int *) ;
 int xfs_rtunmount_inodes (struct xfs_mount*) ;
 int xfs_unmountfs_writesb (struct xfs_mount*) ;
 int xfs_uuid_unmount (struct xfs_mount*) ;
 int xfs_wait_buftarg (int ) ;
 int xfs_warn (struct xfs_mount*,char*,...) ;

void
xfs_unmountfs(
 struct xfs_mount *mp)
{
 __uint64_t resblks;
 int error;

 xfs_qm_unmount_quotas(mp);
 xfs_rtunmount_inodes(mp);
 IRELE(mp->m_rootip);
 xfs_log_force(mp, XFS_LOG_SYNC);
 xfs_reclaim_inodes(mp, 0);
 XFS_bflush(mp->m_ddev_targp);
 xfs_reclaim_inodes(mp, SYNC_WAIT);

 xfs_qm_unmount(mp);






 xfs_log_force(mp, XFS_LOG_SYNC);
 resblks = 0;
 error = xfs_reserve_blocks(mp, &resblks, ((void*)0));
 if (error)
  xfs_warn(mp, "Unable to free reserved block pool. "
    "Freespace may not be correct on next mount.");

 error = xfs_log_sbcount(mp, 1);
 if (error)
  xfs_warn(mp, "Unable to update superblock counters. "
    "Freespace may not be correct on next mount.");
 xfs_unmountfs_writesb(mp);





 error = xfs_flush_buftarg(mp->m_ddev_targp, 1);
 if (error)
  xfs_warn(mp, "%d busy buffers during unmount.", error);
 xfs_wait_buftarg(mp->m_ddev_targp);

 xfs_log_unmount_write(mp);
 xfs_log_unmount(mp);
 xfs_uuid_unmount(mp);




 xfs_free_perag(mp);
}
