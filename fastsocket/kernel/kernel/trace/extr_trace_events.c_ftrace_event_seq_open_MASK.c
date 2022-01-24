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
struct seq_operations {int dummy; } ;
struct inode {struct seq_operations* i_private; } ;
struct file {int f_mode; int f_flags; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct file*,struct seq_operations const*) ; 

__attribute__((used)) static int
FUNC2(struct inode *inode, struct file *file)
{
	const struct seq_operations *seq_ops;

	if ((file->f_mode & FMODE_WRITE) &&
	    (file->f_flags & O_TRUNC))
		FUNC0();

	seq_ops = inode->i_private;
	return FUNC1(file, seq_ops);
}