#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  i8count; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
typedef  TYPE_2__ xfs_dir2_sf_t ;
typedef  int /*<<< orphan*/  xfs_dir2_sf_entry_t ;
typedef  scalar_t__ sfp ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline xfs_dir2_sf_entry_t *FUNC1(xfs_dir2_sf_t *sfp)
{
	return ((xfs_dir2_sf_entry_t *) \
		((char *)(sfp) + FUNC0(sfp->hdr.i8count)));
}