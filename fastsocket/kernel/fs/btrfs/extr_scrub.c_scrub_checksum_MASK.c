#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct scrub_block {int page_count; TYPE_1__* pagev; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int BTRFS_EXTENT_FLAG_DATA ; 
 int BTRFS_EXTENT_FLAG_SUPER ; 
 int BTRFS_EXTENT_FLAG_TREE_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct scrub_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct scrub_block*) ; 
 int FUNC4 (struct scrub_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct scrub_block*) ; 

__attribute__((used)) static void FUNC6(struct scrub_block *sblock)
{
	u64 flags;
	int ret;

	FUNC0(sblock->page_count < 1);
	flags = sblock->pagev[0].flags;
	ret = 0;
	if (flags & BTRFS_EXTENT_FLAG_DATA)
		ret = FUNC2(sblock);
	else if (flags & BTRFS_EXTENT_FLAG_TREE_BLOCK)
		ret = FUNC4(sblock);
	else if (flags & BTRFS_EXTENT_FLAG_SUPER)
		(void)FUNC3(sblock);
	else
		FUNC1(1);
	if (ret)
		FUNC5(sblock);
}