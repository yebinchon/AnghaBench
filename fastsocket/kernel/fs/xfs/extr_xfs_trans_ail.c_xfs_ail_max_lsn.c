
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_lsn_t ;
struct TYPE_3__ {int li_lsn; } ;
typedef TYPE_1__ xfs_log_item_t ;
struct xfs_ail {int xa_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* xfs_ail_max (struct xfs_ail*) ;

__attribute__((used)) static xfs_lsn_t
xfs_ail_max_lsn(
 struct xfs_ail *ailp)
{
 xfs_lsn_t lsn = 0;
 xfs_log_item_t *lip;

 spin_lock(&ailp->xa_lock);
 lip = xfs_ail_max(ailp);
 if (lip)
  lsn = lip->li_lsn;
 spin_unlock(&ailp->xa_lock);

 return lsn;
}
