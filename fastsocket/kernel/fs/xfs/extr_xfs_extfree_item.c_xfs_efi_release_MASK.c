#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  efi_flags; int /*<<< orphan*/  efi_next_extent; } ;
typedef  TYPE_1__ xfs_efi_log_item_t ;
typedef  scalar_t__ uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_EFI_RECOVERED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(xfs_efi_log_item_t	*efip,
		uint			nextents)
{
	FUNC0(FUNC2(&efip->efi_next_extent) >= nextents);
	if (FUNC3(nextents, &efip->efi_next_extent)) {
		/* recovery needs us to drop the EFI reference, too */
		if (FUNC4(XFS_EFI_RECOVERED, &efip->efi_flags))
			FUNC1(efip);

		FUNC1(efip);
		/* efip may now have been freed, do not reference it again. */
	}
}