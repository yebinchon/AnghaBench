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
typedef  int /*<<< orphan*/  xfs_dir2_db_t ;
typedef  int /*<<< orphan*/  xfs_dir2_dataptr_t ;
struct xfs_mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline xfs_dir2_db_t
FUNC2(struct xfs_mount *mp, xfs_dir2_dataptr_t dp)
{
	return FUNC0(mp, FUNC1(mp, dp));
}