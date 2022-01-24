#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ xfs_lsn_t ;
struct xfs_ail {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfs_ail*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_ail*,scalar_t__) ; 

void
FUNC2(
	struct xfs_ail  *ailp)
{
	xfs_lsn_t       threshold_lsn = FUNC0(ailp);

	if (threshold_lsn)
		FUNC1(ailp, threshold_lsn);
}