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
struct TYPE_3__ {size_t namelen; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ xfs_dir2_sf_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_inou_t ;

/* Variables and functions */

__attribute__((used)) static inline xfs_dir2_inou_t *FUNC0(xfs_dir2_sf_entry_t *sfep)
{
	return (xfs_dir2_inou_t *)&(sfep)->name[(sfep)->namelen];
}