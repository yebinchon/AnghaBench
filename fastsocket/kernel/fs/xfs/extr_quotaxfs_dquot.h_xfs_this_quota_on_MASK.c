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
struct xfs_mount {int dummy; } ;

/* Variables and functions */
 int XFS_DQ_ALLTYPES ; 
#define  XFS_DQ_GROUP 130 
#define  XFS_DQ_PROJ 129 
#define  XFS_DQ_USER 128 
 int FUNC0 (struct xfs_mount*) ; 
 int FUNC1 (struct xfs_mount*) ; 

__attribute__((used)) static inline int FUNC2(struct xfs_mount *mp, int type)
{
	switch (type & XFS_DQ_ALLTYPES) {
	case XFS_DQ_USER:
		return FUNC1(mp);
	case XFS_DQ_GROUP:
	case XFS_DQ_PROJ:
		return FUNC0(mp);
	default:
		return 0;
	}
}