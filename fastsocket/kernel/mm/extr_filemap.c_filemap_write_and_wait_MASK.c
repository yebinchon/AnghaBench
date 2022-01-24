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
struct address_space {scalar_t__ nrpages; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct address_space*) ; 
 int FUNC1 (struct address_space*) ; 

int FUNC2(struct address_space *mapping)
{
	int err = 0;

	if (mapping->nrpages) {
		err = FUNC1(mapping);
		/*
		 * Even if the above returned error, the pages may be
		 * written partially (e.g. -ENOSPC), so we wait for it.
		 * But the -EIO is special case, it may indicate the worst
		 * thing (e.g. bug) happened, so we avoid waiting for it.
		 */
		if (err != -EIO) {
			int err2 = FUNC0(mapping);
			if (!err)
				err = err2;
		}
	}
	return err;
}