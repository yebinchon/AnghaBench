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
struct trace_iterator {scalar_t__ cpu_file; struct trace_iterator* trace; int /*<<< orphan*/  mutex; int /*<<< orphan*/  started; } ;
struct inode {int dummy; } ;
struct file {struct trace_iterator* private_data; } ;

/* Variables and functions */
 scalar_t__ TRACE_PIPE_ALL_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_types_lock ; 
 int /*<<< orphan*/  tracing_reader_cpumask ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct trace_iterator *iter = file->private_data;

	FUNC5(&trace_types_lock);

	if (iter->cpu_file == TRACE_PIPE_ALL_CPU)
		FUNC0(tracing_reader_cpumask);
	else
		FUNC1(iter->cpu_file, tracing_reader_cpumask);

	FUNC6(&trace_types_lock);

	FUNC2(iter->started);
	FUNC4(&iter->mutex);
	FUNC3(iter->trace);
	FUNC3(iter);

	return 0;
}