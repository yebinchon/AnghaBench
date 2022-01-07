
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* i_itemp; } ;
typedef TYPE_1__ xfs_inode_t ;
struct TYPE_8__ {int li_flags; struct xfs_ail* li_ailp; } ;
struct TYPE_7__ {scalar_t__ ili_fields; scalar_t__ ili_last_fields; scalar_t__ ili_logged; TYPE_3__ ili_item; } ;
typedef TYPE_2__ xfs_inode_log_item_t ;
struct xfs_ail {int xa_lock; } ;


 int SHUTDOWN_CORRUPT_INCORE ;
 int SHUTDOWN_LOG_IO_ERROR ;
 int XFS_LI_IN_AIL ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_ifunlock (TYPE_1__*) ;
 int xfs_trans_ail_delete (struct xfs_ail*,TYPE_3__*,int ) ;

void
xfs_iflush_abort(
 xfs_inode_t *ip,
 bool stale)
{
 xfs_inode_log_item_t *iip = ip->i_itemp;

 if (iip) {
  struct xfs_ail *ailp = iip->ili_item.li_ailp;
  if (iip->ili_item.li_flags & XFS_LI_IN_AIL) {
   spin_lock(&ailp->xa_lock);
   if (iip->ili_item.li_flags & XFS_LI_IN_AIL) {

    xfs_trans_ail_delete(ailp, &iip->ili_item,
      stale ?
       SHUTDOWN_LOG_IO_ERROR :
       SHUTDOWN_CORRUPT_INCORE);
   } else
    spin_unlock(&ailp->xa_lock);
  }
  iip->ili_logged = 0;




  iip->ili_last_fields = 0;




  iip->ili_fields = 0;
 }



 xfs_ifunlock(ip);
}
