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
 int /*<<< orphan*/  EINVAL ; 
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 struct file* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  ns_file_operations ; 

struct file *FUNC3(int fd)
{
	struct file *file;

	file = FUNC1(fd);
	if (!file)
		return FUNC0(-EBADF);

	if (file->f_op != &ns_file_operations)
		goto out_invalid;

	return file;

out_invalid:
	FUNC2(file);
	return FUNC0(-EINVAL);
}