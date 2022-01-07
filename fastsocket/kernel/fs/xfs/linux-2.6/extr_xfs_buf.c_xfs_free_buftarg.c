
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_flags; } ;
struct xfs_buftarg {int bt_task; int bt_shrinker; } ;


 int XFS_MOUNT_BARRIER ;
 int kmem_free (struct xfs_buftarg*) ;
 int kthread_stop (int ) ;
 int unregister_shrinker (int *) ;
 int xfs_blkdev_issue_flush (struct xfs_buftarg*) ;
 int xfs_flush_buftarg (struct xfs_buftarg*,int) ;

void
xfs_free_buftarg(
 struct xfs_mount *mp,
 struct xfs_buftarg *btp)
{
 unregister_shrinker(&btp->bt_shrinker);

 xfs_flush_buftarg(btp, 1);
 if (mp->m_flags & XFS_MOUNT_BARRIER)
  xfs_blkdev_issue_flush(btp);

 kthread_stop(btp->bt_task);
 kmem_free(btp);
}
