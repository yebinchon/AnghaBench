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
struct seq_oss_devinfo {int dummy; } ;
struct file {struct seq_oss_devinfo* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int ENXIO ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct seq_oss_devinfo*,struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int
FUNC2(struct file *file, poll_table * wait)
{
	struct seq_oss_devinfo *dp;
	dp = file->private_data;
	if (FUNC0(!dp))
		return -ENXIO;
	return FUNC1(dp, file, wait);
}