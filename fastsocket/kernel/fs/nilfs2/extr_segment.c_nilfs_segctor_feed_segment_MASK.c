#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nilfs_sc_info {TYPE_2__* sc_curseg; int /*<<< orphan*/  sc_segbufs; int /*<<< orphan*/  sc_nblk_this_inc; } ;
struct TYPE_5__ {scalar_t__ nblocks; } ;
struct TYPE_6__ {TYPE_1__ sb_sum; } ;

/* Variables and functions */
 int E2BIG ; 
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nilfs_sc_info*) ; 

__attribute__((used)) static int FUNC3(struct nilfs_sc_info *sci)
{
	sci->sc_nblk_this_inc += sci->sc_curseg->sb_sum.nblocks;
	if (FUNC1(sci->sc_curseg, &sci->sc_segbufs))
		return -E2BIG; /* The current segment is filled up
				  (internal code) */
	sci->sc_curseg = FUNC0(sci->sc_curseg);
	return FUNC2(sci);
}