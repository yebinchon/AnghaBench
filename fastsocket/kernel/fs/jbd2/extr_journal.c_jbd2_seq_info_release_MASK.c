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
struct seq_file {struct jbd2_stats_proc_session* private; } ;
struct jbd2_stats_proc_session {struct jbd2_stats_proc_session* stats; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jbd2_stats_proc_session*) ; 
 int FUNC1 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct seq_file *seq = file->private_data;
	struct jbd2_stats_proc_session *s = seq->private;
	FUNC0(s->stats);
	FUNC0(s);
	return FUNC1(inode, file);
}