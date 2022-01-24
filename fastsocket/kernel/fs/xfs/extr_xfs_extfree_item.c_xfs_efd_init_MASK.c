#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_extent_t ;
typedef  int /*<<< orphan*/  xfs_efd_log_item_t ;
typedef  int uint ;
struct xfs_mount {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  efi_id; } ;
struct xfs_efi_log_item {TYPE_2__ efi_format; } ;
struct TYPE_3__ {int efd_nextents; int /*<<< orphan*/  efd_efi_id; } ;
struct xfs_efd_log_item {TYPE_1__ efd_format; struct xfs_efi_log_item* efd_efip; int /*<<< orphan*/  efd_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int XFS_EFD_MAX_FAST_EXTENTS ; 
 int /*<<< orphan*/  XFS_LI_EFD ; 
 struct xfs_efd_log_item* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct xfs_efd_log_item* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_efd_item_ops ; 
 int /*<<< orphan*/  xfs_efd_zone ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct xfs_efd_log_item *
FUNC4(
	struct xfs_mount	*mp,
	struct xfs_efi_log_item	*efip,
	uint			nextents)

{
	struct xfs_efd_log_item	*efdp;
	uint			size;

	FUNC0(nextents > 0);
	if (nextents > XFS_EFD_MAX_FAST_EXTENTS) {
		size = (uint)(sizeof(xfs_efd_log_item_t) +
			((nextents - 1) * sizeof(xfs_extent_t)));
		efdp = FUNC1(size, KM_SLEEP);
	} else {
		efdp = FUNC2(xfs_efd_zone, KM_SLEEP);
	}

	FUNC3(mp, &efdp->efd_item, XFS_LI_EFD, &xfs_efd_item_ops);
	efdp->efd_efip = efip;
	efdp->efd_format.efd_nextents = nextents;
	efdp->efd_format.efd_efi_id = efip->efi_format.efi_id;

	return efdp;
}