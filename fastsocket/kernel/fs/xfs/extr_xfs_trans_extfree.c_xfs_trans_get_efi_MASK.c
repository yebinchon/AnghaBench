#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  t_mountp; } ;
typedef  TYPE_1__ xfs_trans_t ;
struct TYPE_8__ {int /*<<< orphan*/  efi_item; } ;
typedef  TYPE_2__ xfs_efi_log_item_t ;
typedef  scalar_t__ uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

xfs_efi_log_item_t *
FUNC3(xfs_trans_t	*tp,
		  uint		nextents)
{
	xfs_efi_log_item_t	*efip;

	FUNC0(tp != NULL);
	FUNC0(nextents > 0);

	efip = FUNC1(tp->t_mountp, nextents);
	FUNC0(efip != NULL);

	/*
	 * Get a log_item_desc to point at the new item.
	 */
	FUNC2(tp, &efip->efi_item);
	return efip;
}