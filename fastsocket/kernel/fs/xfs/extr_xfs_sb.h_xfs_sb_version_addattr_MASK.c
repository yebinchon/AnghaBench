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
struct TYPE_4__ {int sb_versionnum; } ;
typedef  TYPE_1__ xfs_sb_t ;

/* Variables and functions */
 int XFS_SB_VERSION_1 ; 
 int XFS_SB_VERSION_2 ; 
 int XFS_SB_VERSION_4 ; 
 int XFS_SB_VERSION_ATTRBIT ; 
 int FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC1(xfs_sb_t *sbp)
{
	if (sbp->sb_versionnum == XFS_SB_VERSION_1)
		sbp->sb_versionnum = XFS_SB_VERSION_2;
	else if (FUNC0(sbp) == XFS_SB_VERSION_4)
		sbp->sb_versionnum |= XFS_SB_VERSION_ATTRBIT;
	else
		sbp->sb_versionnum = XFS_SB_VERSION_4 | XFS_SB_VERSION_ATTRBIT;
}