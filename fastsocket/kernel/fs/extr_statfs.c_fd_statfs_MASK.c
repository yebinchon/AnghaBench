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
struct kstatfs {int dummy; } ;
struct file {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int EBADF ; 
 struct file* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct kstatfs*) ; 

int FUNC3(int fd, struct kstatfs *st)
{
	struct file *file = FUNC0(fd);
	int error = -EBADF;
	if (file) {
		error = FUNC2(&file->f_path, st);
		FUNC1(file);
	}
	return error;
}