
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int li_flags; } ;
typedef TYPE_1__ xfs_log_item_t ;
struct TYPE_9__ {scalar_t__ i_ino; scalar_t__ i_itemp; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef int uint ;


 int ASSERT (int) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int XFS_IOLOCK_EXCL ;
 int XFS_IOLOCK_SHARED ;
 int XFS_LI_IN_AIL ;
 int delay (int) ;
 int xfs_ilock (TYPE_2__*,int ) ;
 int xfs_ilock_nowait (TYPE_2__*,int ) ;
 int xfs_iunlock (TYPE_2__*,int) ;
 int xfs_lock_inumorder (int,int) ;

void
xfs_lock_two_inodes(
 xfs_inode_t *ip0,
 xfs_inode_t *ip1,
 uint lock_mode)
{
 xfs_inode_t *temp;
 int attempts = 0;
 xfs_log_item_t *lp;

 if (lock_mode & (XFS_IOLOCK_SHARED|XFS_IOLOCK_EXCL))
  ASSERT((lock_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL)) == 0);
 ASSERT(ip0->i_ino != ip1->i_ino);

 if (ip0->i_ino > ip1->i_ino) {
  temp = ip0;
  ip0 = ip1;
  ip1 = temp;
 }

 again:
 xfs_ilock(ip0, xfs_lock_inumorder(lock_mode, 0));






 lp = (xfs_log_item_t *)ip0->i_itemp;
 if (lp && (lp->li_flags & XFS_LI_IN_AIL)) {
  if (!xfs_ilock_nowait(ip1, xfs_lock_inumorder(lock_mode, 1))) {
   xfs_iunlock(ip0, lock_mode);
   if ((++attempts % 5) == 0)
    delay(1);
   goto again;
  }
 } else {
  xfs_ilock(ip1, xfs_lock_inumorder(lock_mode, 1));
 }
}
