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
struct file {TYPE_1__* f_op; } ;
typedef  unsigned long loff_t ;
struct TYPE_2__ {scalar_t__ (* llseek ) (struct file*,unsigned long,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct file*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ no_llseek ; 
 scalar_t__ FUNC4 (struct file*,unsigned long,int /*<<< orphan*/ ) ; 

int FUNC5(struct file *file, loff_t off)
{
	int ret = 1;

	if (file->f_op->llseek && file->f_op->llseek != no_llseek) {
		if (FUNC0() ||
		    file->f_op->llseek(file, off, SEEK_CUR) < 0)
			return 0;
	} else {
		char *buf = (char *)FUNC3(GFP_KERNEL);

		if (!buf)
			return 0;
		while (off > 0) {
			unsigned long n = off;

			if (n > PAGE_SIZE)
				n = PAGE_SIZE;
			if (!FUNC1(file, buf, n)) {
				ret = 0;
				break;
			}
			off -= n;
		}
		FUNC2((unsigned long)buf);
	}
	return ret;
}