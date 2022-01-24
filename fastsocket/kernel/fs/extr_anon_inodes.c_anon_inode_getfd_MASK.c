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
struct file_operations {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 struct file* FUNC2 (char const*,struct file_operations const*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct file*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(const char *name, const struct file_operations *fops,
		     void *priv, int flags)
{
	int error, fd;
	struct file *file;

	error = FUNC4(flags);
	if (error < 0)
		return error;
	fd = error;

	file = FUNC2(name, fops, priv, flags);
	if (FUNC0(file)) {
		error = FUNC1(file);
		goto err_put_unused_fd;
	}
	FUNC3(fd, file);

	return fd;

err_put_unused_fd:
	FUNC5(fd);
	return error;
}