
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_extent_t ;
typedef int xfs_efi_log_item_t ;
typedef int uint ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {int efi_nextents; scalar_t__ efi_id; } ;
struct xfs_efi_log_item {int efi_refcount; int efi_next_extent; TYPE_1__ efi_format; int efi_item; } ;
typedef scalar_t__ __psint_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int XFS_EFI_MAX_FAST_EXTENTS ;
 int XFS_LI_EFI ;
 int atomic_set (int *,int) ;
 struct xfs_efi_log_item* kmem_zalloc (int,int ) ;
 struct xfs_efi_log_item* kmem_zone_zalloc (int ,int ) ;
 int xfs_efi_item_ops ;
 int xfs_efi_zone ;
 int xfs_log_item_init (struct xfs_mount*,int *,int ,int *) ;

struct xfs_efi_log_item *
xfs_efi_init(
 struct xfs_mount *mp,
 uint nextents)

{
 struct xfs_efi_log_item *efip;
 uint size;

 ASSERT(nextents > 0);
 if (nextents > XFS_EFI_MAX_FAST_EXTENTS) {
  size = (uint)(sizeof(xfs_efi_log_item_t) +
   ((nextents - 1) * sizeof(xfs_extent_t)));
  efip = kmem_zalloc(size, KM_SLEEP);
 } else {
  efip = kmem_zone_zalloc(xfs_efi_zone, KM_SLEEP);
 }

 xfs_log_item_init(mp, &efip->efi_item, XFS_LI_EFI, &xfs_efi_item_ops);
 efip->efi_format.efi_nextents = nextents;
 efip->efi_format.efi_id = (__psint_t)(void*)efip;
 atomic_set(&efip->efi_next_extent, 0);
 atomic_set(&efip->efi_refcount, 2);

 return efip;
}
