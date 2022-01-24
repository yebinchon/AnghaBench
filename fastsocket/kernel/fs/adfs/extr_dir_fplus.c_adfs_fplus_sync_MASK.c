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
struct buffer_head {int dummy; } ;
struct adfs_dir {int nr_buffers; struct buffer_head** bh; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 

__attribute__((used)) static int
FUNC3(struct adfs_dir *dir)
{
	int err = 0;
	int i;

	for (i = dir->nr_buffers - 1; i >= 0; i--) {
		struct buffer_head *bh = dir->bh[i];
		FUNC2(bh);
		if (FUNC0(bh) && !FUNC1(bh))
			err = -EIO;
	}

	return err;
}