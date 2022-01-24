#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sb_blocklog; } ;
typedef  TYPE_1__ xfs_sb_t ;
typedef  int __uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BBSHIFT ; 
 int EFBIG ; 
 scalar_t__ PAGE_CACHE_SHIFT ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ UINT_MAX ; 
 scalar_t__ ULONG_MAX ; 

int
FUNC1(
	xfs_sb_t	*sbp,
	__uint64_t	nblocks)
{
	FUNC0(PAGE_SHIFT >= sbp->sb_blocklog);
	FUNC0(sbp->sb_blocklog >= BBSHIFT);

#if XFS_BIG_BLKNOS     /* Limited by ULONG_MAX of page cache index */
	if (nblocks >> (PAGE_CACHE_SHIFT - sbp->sb_blocklog) > ULONG_MAX)
		return EFBIG;
#else                  /* Limited by UINT_MAX of sectors */
	if (nblocks << (sbp->sb_blocklog - BBSHIFT) > UINT_MAX)
		return EFBIG;
#endif
	return 0;
}