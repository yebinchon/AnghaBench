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
struct backing_dev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_RECLAIMABLE ; 
 int /*<<< orphan*/  BDI_WRITEBACK ; 
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_UNSTABLE_NFS ; 
 int /*<<< orphan*/  NR_WRITEBACK ; 
 int /*<<< orphan*/  NR_WRITEBACK_TEMP ; 
 scalar_t__ FUNC0 (struct backing_dev_info*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct backing_dev_info *bdi,
		unsigned long dirty, unsigned long *pbdi_dirty)
{
	unsigned long avail_dirty;

	avail_dirty = FUNC1(NR_FILE_DIRTY) +
		 FUNC1(NR_WRITEBACK) +
		 FUNC1(NR_UNSTABLE_NFS) +
		 FUNC1(NR_WRITEBACK_TEMP);

	if (avail_dirty < dirty)
		avail_dirty = dirty - avail_dirty;
	else
		avail_dirty = 0;

	avail_dirty += FUNC0(bdi, BDI_RECLAIMABLE) +
		FUNC0(bdi, BDI_WRITEBACK);

	*pbdi_dirty = FUNC2(*pbdi_dirty, avail_dirty);
}