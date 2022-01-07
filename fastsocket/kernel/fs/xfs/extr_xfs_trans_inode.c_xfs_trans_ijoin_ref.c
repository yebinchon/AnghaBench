
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {TYPE_1__* i_itemp; } ;
struct TYPE_2__ {int ili_lock_flags; } ;


 int IHOLD (struct xfs_inode*) ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*) ;

void
xfs_trans_ijoin_ref(
 struct xfs_trans *tp,
 struct xfs_inode *ip,
 uint lock_flags)
{
 xfs_trans_ijoin(tp, ip);
 IHOLD(ip);
 ip->i_itemp->ili_lock_flags = lock_flags;
}
