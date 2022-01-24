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
struct file {int /*<<< orphan*/ * f_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 struct file* FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int) ; 
 int /*<<< orphan*/  perf_fops ; 

__attribute__((used)) static struct file *FUNC3(int fd, int *fput_needed)
{
	struct file *file;

	file = FUNC1(fd, fput_needed);
	if (!file)
		return FUNC0(-EBADF);

	if (file->f_op != &perf_fops) {
		FUNC2(file, *fput_needed);
		*fput_needed = 0;
		return FUNC0(-EBADF);
	}

	return file;
}