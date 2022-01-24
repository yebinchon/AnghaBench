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
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_1__ f_path; } ;

/* Variables and functions */
 int EBADF ; 
 struct file* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(unsigned int fd, int datasync)
{
	struct file *file;
	int ret = -EBADF;

	file = FUNC0(fd);
	if (file) {
		ret = FUNC2(file, file->f_path.dentry, datasync);
		FUNC1(file);
	}
	return ret;
}