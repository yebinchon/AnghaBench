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
struct file {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef  unsigned long pgoff_t ;
struct TYPE_2__ {int /*<<< orphan*/  readpages; int /*<<< orphan*/  readpage; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC0 (struct address_space*,struct file*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct address_space *mapping, struct file *filp,
		pgoff_t offset, unsigned long nr_to_read)
{
	int ret = 0;

	if (FUNC2(!mapping->a_ops->readpage && !mapping->a_ops->readpages))
		return -EINVAL;

	nr_to_read = FUNC1(nr_to_read);
	while (nr_to_read) {
		int err;

		unsigned long this_chunk = (2 * 1024 * 1024) / PAGE_CACHE_SIZE;

		if (this_chunk > nr_to_read)
			this_chunk = nr_to_read;
		err = FUNC0(mapping, filp,
						offset, this_chunk, 0);
		if (err < 0) {
			ret = err;
			break;
		}
		ret += err;
		offset += this_chunk;
		nr_to_read -= this_chunk;
	}
	return ret;
}