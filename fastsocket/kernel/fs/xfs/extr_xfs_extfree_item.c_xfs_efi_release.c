
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int efi_flags; int efi_next_extent; } ;
typedef TYPE_1__ xfs_efi_log_item_t ;
typedef scalar_t__ uint ;


 int ASSERT (int) ;
 int XFS_EFI_RECOVERED ;
 int __xfs_efi_release (TYPE_1__*) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ atomic_sub_and_test (scalar_t__,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
xfs_efi_release(xfs_efi_log_item_t *efip,
  uint nextents)
{
 ASSERT(atomic_read(&efip->efi_next_extent) >= nextents);
 if (atomic_sub_and_test(nextents, &efip->efi_next_extent)) {

  if (test_bit(XFS_EFI_RECOVERED, &efip->efi_flags))
   __xfs_efi_release(efip);

  __xfs_efi_release(efip);

 }
}
