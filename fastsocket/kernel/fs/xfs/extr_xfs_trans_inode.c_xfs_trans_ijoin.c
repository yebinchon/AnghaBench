
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ili_lock_flags; int ili_item; } ;
typedef TYPE_1__ xfs_inode_log_item_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {struct xfs_trans* i_transp; TYPE_1__* i_itemp; int i_mount; } ;


 int ASSERT (int) ;
 int XFS_ILOCK_EXCL ;
 int xfs_inode_item_init (struct xfs_inode*,int ) ;
 int xfs_isilocked (struct xfs_inode*,int ) ;
 int xfs_trans_add_item (struct xfs_trans*,int *) ;
 int xfs_trans_inode_broot_debug (struct xfs_inode*) ;

void
xfs_trans_ijoin(
 struct xfs_trans *tp,
 struct xfs_inode *ip)
{
 xfs_inode_log_item_t *iip;

 ASSERT(ip->i_transp == ((void*)0));
 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
 if (ip->i_itemp == ((void*)0))
  xfs_inode_item_init(ip, ip->i_mount);
 iip = ip->i_itemp;
 ASSERT(iip->ili_lock_flags == 0);




 xfs_trans_add_item(tp, &iip->ili_item);

 xfs_trans_inode_broot_debug(ip);





 ip->i_transp = tp;
}
