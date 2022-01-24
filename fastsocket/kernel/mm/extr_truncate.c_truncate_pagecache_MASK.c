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
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct inode *inode, loff_t oldsize, loff_t newsize)
{
	struct address_space *mapping = inode->i_mapping;
	loff_t holebegin = FUNC0(newsize, PAGE_SIZE);

	/*
	 * unmap_mapping_range is called twice, first simply for
	 * efficiency so that truncate_inode_pages does fewer
	 * single-page unmaps.  However after this first call, and
	 * before truncate_inode_pages finishes, it is possible for
	 * private pages to be COWed, which remain after
	 * truncate_inode_pages finishes, hence the second
	 * unmap_mapping_range call must be made for correctness.
	 */
	FUNC2(mapping, holebegin, 0, 1);
	FUNC1(mapping, newsize);
	FUNC2(mapping, holebegin, 0, 1);
}