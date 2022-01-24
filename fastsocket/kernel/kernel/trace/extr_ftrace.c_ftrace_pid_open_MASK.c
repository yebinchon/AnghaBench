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
struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ftrace_pid_sops ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct inode *inode, struct file *file)
{
	int ret = 0;

	if ((file->f_mode & FMODE_WRITE) &&
	    (file->f_flags & O_TRUNC))
		FUNC0();

	if (file->f_mode & FMODE_READ)
		ret = FUNC1(file, &ftrace_pid_sops);

	return ret;
}