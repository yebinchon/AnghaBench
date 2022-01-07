
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int li_flags; struct xfs_ail* li_ailp; } ;
typedef TYPE_3__ xfs_log_item_t ;
struct TYPE_6__ {int di_mode; } ;
struct xfs_inode {int i_flags_lock; scalar_t__ i_ino; int i_flags; int i_flush; int i_pincount; int i_iocount; TYPE_2__* i_itemp; int i_mount; scalar_t__ i_afp; TYPE_1__ i_d; } ;
struct xfs_ail {int xa_lock; } ;
struct rcu_head {int dummy; } ;
struct TYPE_9__ {int i_dentry; } ;
struct TYPE_7__ {TYPE_3__ ili_item; } ;


 int ASSERT (int) ;
 int SHUTDOWN_CORRUPT_INCORE ;


 int S_IFMT ;

 TYPE_5__* VFS_I (struct xfs_inode*) ;
 int XFS_ATTR_FORK ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 int XFS_IRECLAIM ;
 int XFS_LI_IN_AIL ;
 scalar_t__ atomic_read (int *) ;
 int call_rcu (struct rcu_head*,int ) ;
 int completion_done (int *) ;
 int spin_is_locked (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xfs_idestroy_fork (struct xfs_inode*,int ) ;
 int xfs_inode_free_callback ;
 int xfs_inode_item_destroy (struct xfs_inode*) ;
 int xfs_trans_ail_delete (struct xfs_ail*,TYPE_3__*,int ) ;

void
xfs_inode_free(
 struct xfs_inode *ip)
{
 switch (ip->i_d.di_mode & S_IFMT) {
 case 128:
 case 130:
 case 129:
  xfs_idestroy_fork(ip, XFS_DATA_FORK);
  break;
 }

 if (ip->i_afp)
  xfs_idestroy_fork(ip, XFS_ATTR_FORK);

 if (ip->i_itemp) {





  xfs_log_item_t *lip = &ip->i_itemp->ili_item;
  struct xfs_ail *ailp = lip->li_ailp;

  ASSERT(((lip->li_flags & XFS_LI_IN_AIL) == 0) ||
           XFS_FORCED_SHUTDOWN(ip->i_mount));
  if (lip->li_flags & XFS_LI_IN_AIL) {
   spin_lock(&ailp->xa_lock);
   if (lip->li_flags & XFS_LI_IN_AIL)
    xfs_trans_ail_delete(ailp, lip,
           SHUTDOWN_CORRUPT_INCORE);
   else
    spin_unlock(&ailp->xa_lock);
  }
  xfs_inode_item_destroy(ip);
  ip->i_itemp = ((void*)0);
 }


 ASSERT(atomic_read(&ip->i_iocount) == 0);
 ASSERT(atomic_read(&ip->i_pincount) == 0);
 ASSERT(!spin_is_locked(&ip->i_flags_lock));
 ASSERT(completion_done(&ip->i_flush));







 spin_lock(&ip->i_flags_lock);
 ip->i_flags = XFS_IRECLAIM;
 ip->i_ino = 0;
 spin_unlock(&ip->i_flags_lock);
 call_rcu((struct rcu_head *)&VFS_I(ip)->i_dentry, xfs_inode_free_callback);
}
