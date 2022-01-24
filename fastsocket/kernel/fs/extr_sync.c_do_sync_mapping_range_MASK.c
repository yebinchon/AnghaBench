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
struct address_space {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_CACHE_SHIFT ; 
 unsigned int SYNC_FILE_RANGE_WAIT_AFTER ; 
 unsigned int SYNC_FILE_RANGE_WAIT_BEFORE ; 
 unsigned int SYNC_FILE_RANGE_WRITE ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 int FUNC0 (struct address_space*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct address_space*,int,int) ; 

int FUNC2(struct address_space *mapping, loff_t offset,
			  loff_t endbyte, unsigned int flags)
{
	int ret;

	if (!mapping) {
		ret = -EINVAL;
		goto out;
	}

	ret = 0;
	if (flags & SYNC_FILE_RANGE_WAIT_BEFORE) {
		ret = FUNC1(mapping,
					offset >> PAGE_CACHE_SHIFT,
					endbyte >> PAGE_CACHE_SHIFT);
		if (ret < 0)
			goto out;
	}

	if (flags & SYNC_FILE_RANGE_WRITE) {
		ret = FUNC0(mapping, offset, endbyte,
						WB_SYNC_ALL);
		if (ret < 0)
			goto out;
	}

	if (flags & SYNC_FILE_RANGE_WAIT_AFTER) {
		ret = FUNC1(mapping,
					offset >> PAGE_CACHE_SHIFT,
					endbyte >> PAGE_CACHE_SHIFT);
	}
out:
	return ret;
}