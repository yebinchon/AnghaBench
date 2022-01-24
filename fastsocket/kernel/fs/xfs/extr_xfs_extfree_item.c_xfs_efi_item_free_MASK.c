#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ efi_nextents; } ;
struct xfs_efi_log_item {TYPE_1__ efi_format; } ;

/* Variables and functions */
 scalar_t__ XFS_EFI_MAX_FAST_EXTENTS ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_efi_log_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct xfs_efi_log_item*) ; 
 int /*<<< orphan*/  xfs_efi_zone ; 

void
FUNC2(
	struct xfs_efi_log_item	*efip)
{
	if (efip->efi_format.efi_nextents > XFS_EFI_MAX_FAST_EXTENTS)
		FUNC0(efip);
	else
		FUNC1(xfs_efi_zone, efip);
}