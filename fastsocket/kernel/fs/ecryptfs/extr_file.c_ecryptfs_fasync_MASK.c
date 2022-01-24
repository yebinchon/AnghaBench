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
struct TYPE_2__ {int (* fasync ) (int,struct file*,int) ;} ;

/* Variables and functions */
 struct file* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,struct file*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(int fd, struct file *file, int flag)
{
	int rc = 0;
	struct file *lower_file = NULL;

	FUNC1();
	lower_file = FUNC0(file);
	if (lower_file->f_op && lower_file->f_op->fasync)
		rc = lower_file->f_op->fasync(fd, lower_file, flag);
	FUNC3();
	return rc;
}