
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int t_mountp; } ;
typedef TYPE_1__ xfs_trans_t ;
typedef int xfs_efi_log_item_t ;
struct TYPE_8__ {int efd_item; } ;
typedef TYPE_2__ xfs_efd_log_item_t ;
typedef scalar_t__ uint ;


 int ASSERT (int) ;
 TYPE_2__* xfs_efd_init (int ,int *,scalar_t__) ;
 int xfs_trans_add_item (TYPE_1__*,int *) ;

xfs_efd_log_item_t *
xfs_trans_get_efd(xfs_trans_t *tp,
    xfs_efi_log_item_t *efip,
    uint nextents)
{
 xfs_efd_log_item_t *efdp;

 ASSERT(tp != ((void*)0));
 ASSERT(nextents > 0);

 efdp = xfs_efd_init(tp->t_mountp, efip, nextents);
 ASSERT(efdp != ((void*)0));




 xfs_trans_add_item(tp, &efdp->efd_item);
 return efdp;
}
