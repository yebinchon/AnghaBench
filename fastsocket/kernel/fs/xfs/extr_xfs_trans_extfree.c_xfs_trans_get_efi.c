
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int t_mountp; } ;
typedef TYPE_1__ xfs_trans_t ;
struct TYPE_8__ {int efi_item; } ;
typedef TYPE_2__ xfs_efi_log_item_t ;
typedef scalar_t__ uint ;


 int ASSERT (int) ;
 TYPE_2__* xfs_efi_init (int ,scalar_t__) ;
 int xfs_trans_add_item (TYPE_1__*,int *) ;

xfs_efi_log_item_t *
xfs_trans_get_efi(xfs_trans_t *tp,
    uint nextents)
{
 xfs_efi_log_item_t *efip;

 ASSERT(tp != ((void*)0));
 ASSERT(nextents > 0);

 efip = xfs_efi_init(tp->t_mountp, nextents);
 ASSERT(efip != ((void*)0));




 xfs_trans_add_item(tp, &efip->efi_item);
 return efip;
}
