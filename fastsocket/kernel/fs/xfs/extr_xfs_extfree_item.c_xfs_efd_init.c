
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_extent_t ;
typedef int xfs_efd_log_item_t ;
typedef int uint ;
struct xfs_mount {int dummy; } ;
struct TYPE_4__ {int efi_id; } ;
struct xfs_efi_log_item {TYPE_2__ efi_format; } ;
struct TYPE_3__ {int efd_nextents; int efd_efi_id; } ;
struct xfs_efd_log_item {TYPE_1__ efd_format; struct xfs_efi_log_item* efd_efip; int efd_item; } ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int XFS_EFD_MAX_FAST_EXTENTS ;
 int XFS_LI_EFD ;
 struct xfs_efd_log_item* kmem_zalloc (int,int ) ;
 struct xfs_efd_log_item* kmem_zone_zalloc (int ,int ) ;
 int xfs_efd_item_ops ;
 int xfs_efd_zone ;
 int xfs_log_item_init (struct xfs_mount*,int *,int ,int *) ;

struct xfs_efd_log_item *
xfs_efd_init(
 struct xfs_mount *mp,
 struct xfs_efi_log_item *efip,
 uint nextents)

{
 struct xfs_efd_log_item *efdp;
 uint size;

 ASSERT(nextents > 0);
 if (nextents > XFS_EFD_MAX_FAST_EXTENTS) {
  size = (uint)(sizeof(xfs_efd_log_item_t) +
   ((nextents - 1) * sizeof(xfs_extent_t)));
  efdp = kmem_zalloc(size, KM_SLEEP);
 } else {
  efdp = kmem_zone_zalloc(xfs_efd_zone, KM_SLEEP);
 }

 xfs_log_item_init(mp, &efdp->efd_item, XFS_LI_EFD, &xfs_efd_item_ops);
 efdp->efd_efip = efip;
 efdp->efd_format.efd_nextents = nextents;
 efdp->efd_format.efd_efi_id = efip->efi_format.efi_id;

 return efdp;
}
