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
struct seq_file {struct seq_file* buf; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*) ; 

int FUNC1(struct inode *inode, struct file *file)
{
	struct seq_file *m = (struct seq_file *)file->private_data;
	FUNC0(m->buf);
	FUNC0(m);
	return 0;
}