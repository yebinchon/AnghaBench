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
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,unsigned long*) ; 

int FUNC2(struct address_space *mapping, pgoff_t pgoff, int create,
				void **kmem, unsigned long *pfn)
{
	int rc;
	sector_t block;

	/* first, retrieve the sector number */
	rc = FUNC0(mapping->host, pgoff, create, &block);
	if (rc)
		return rc;

	/* retrieve address of the target data */
	rc = FUNC1(mapping->host, block, kmem, pfn);
	return rc;
}