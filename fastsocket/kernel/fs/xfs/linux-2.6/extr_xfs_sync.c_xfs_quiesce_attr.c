
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_active_trans; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 int delay (int) ;
 int xfs_log_sbcount (struct xfs_mount*,int) ;
 int xfs_log_unmount_write (struct xfs_mount*) ;
 int xfs_quiesce_fs (struct xfs_mount*) ;
 int xfs_unmountfs_writesb (struct xfs_mount*) ;
 int xfs_warn (struct xfs_mount*,char*) ;

void
xfs_quiesce_attr(
 struct xfs_mount *mp)
{
 int error = 0;


 while (atomic_read(&mp->m_active_trans) > 0)
  delay(100);


 xfs_quiesce_fs(mp);





 WARN_ON(atomic_read(&mp->m_active_trans) != 0);


 error = xfs_log_sbcount(mp, 1);
 if (error)
  xfs_warn(mp, "xfs_attr_quiesce: failed to log sb changes. "
    "Frozen image may not be consistent.");
 xfs_log_unmount_write(mp);
 xfs_unmountfs_writesb(mp);
}
