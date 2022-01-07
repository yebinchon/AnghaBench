
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_lsn_t ;
struct TYPE_3__ {scalar_t__ li_lsn; } ;
typedef TYPE_1__ xfs_log_item_t ;
struct xfs_ail {int xa_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* xfs_ail_min (struct xfs_ail*) ;

xfs_lsn_t
xfs_ail_min_lsn(
 struct xfs_ail *ailp)
{
 xfs_lsn_t lsn;
 xfs_log_item_t *lip;

 spin_lock(&ailp->xa_lock);
 lip = xfs_ail_min(ailp);
 if (lip == ((void*)0)) {
  lsn = (xfs_lsn_t)0;
 } else {
  lsn = lip->li_lsn;
 }
 spin_unlock(&ailp->xa_lock);

 return lsn;
}
