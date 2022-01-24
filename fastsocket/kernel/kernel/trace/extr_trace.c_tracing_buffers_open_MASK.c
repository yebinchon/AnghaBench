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
struct inode {scalar_t__ i_private; } ;
struct ftrace_buffer_info {int cpu; unsigned int read; int /*<<< orphan*/ * spare; int /*<<< orphan*/ * tr; } ;
struct file {struct ftrace_buffer_info* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  global_trace ; 
 struct ftrace_buffer_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct file*) ; 
 scalar_t__ tracing_disabled ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filp)
{
	int cpu = (int)(long)inode->i_private;
	struct ftrace_buffer_info *info;

	if (tracing_disabled)
		return -ENODEV;

	info = FUNC0(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->tr	= &global_trace;
	info->cpu	= cpu;
	info->spare	= NULL;
	/* Force reading ring buffer for first read */
	info->read	= (unsigned int)-1;

	filp->private_data = info;

	return FUNC1(inode, filp);
}