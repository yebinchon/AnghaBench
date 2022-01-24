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
struct seq_file {struct gcov_iterator* private; } ;
struct inode {int dummy; } ;
struct gcov_iterator {int dummy; } ;
struct gcov_info {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_iterator*) ; 
 struct gcov_info* FUNC2 (struct gcov_iterator*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct gcov_iterator *iter;
	struct gcov_info *info;
	struct seq_file *seq;

	seq = file->private_data;
	iter = seq->private;
	info = FUNC2(iter);
	FUNC1(iter);
	FUNC0(info);
	FUNC3(inode, file);

	return 0;
}