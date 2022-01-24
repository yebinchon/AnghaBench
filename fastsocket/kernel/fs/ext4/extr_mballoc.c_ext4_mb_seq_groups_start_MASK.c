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
struct super_block {int dummy; } ;
struct seq_file {struct super_block* private; } ;
typedef  scalar_t__ loff_t ;
typedef  scalar_t__ ext4_group_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct super_block*) ; 

__attribute__((used)) static void *FUNC1(struct seq_file *seq, loff_t *pos)
{
	struct super_block *sb = seq->private;
	ext4_group_t group;

	if (*pos < 0 || *pos >= FUNC0(sb))
		return NULL;
	group = *pos + 1;
	return (void *) ((unsigned long) group);
}