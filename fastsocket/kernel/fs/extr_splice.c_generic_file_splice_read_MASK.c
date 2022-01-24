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
struct pipe_inode_info {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FUNC0 (struct file*,scalar_t__*,struct pipe_inode_info*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

ssize_t FUNC4(struct file *in, loff_t *ppos,
				 struct pipe_inode_info *pipe, size_t len,
				 unsigned int flags)
{
	loff_t isize, left;
	int ret;

	isize = FUNC2(in->f_mapping->host);
	if (FUNC3(*ppos >= isize))
		return 0;

	left = isize - *ppos;
	if (FUNC3(left < len))
		len = left;

	ret = FUNC0(in, ppos, pipe, len, flags);
	if (ret > 0) {
		*ppos += ret;
		FUNC1(in);
	}

	return ret;
}