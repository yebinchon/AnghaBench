
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ efi_nextents; } ;
struct xfs_efi_log_item {TYPE_1__ efi_format; } ;


 scalar_t__ XFS_EFI_MAX_FAST_EXTENTS ;
 int kmem_free (struct xfs_efi_log_item*) ;
 int kmem_zone_free (int ,struct xfs_efi_log_item*) ;
 int xfs_efi_zone ;

void
xfs_efi_item_free(
 struct xfs_efi_log_item *efip)
{
 if (efip->efi_format.efi_nextents > XFS_EFI_MAX_FAST_EXTENTS)
  kmem_free(efip);
 else
  kmem_zone_free(xfs_efi_zone, efip);
}
