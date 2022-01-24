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
struct trace_iterator {int /*<<< orphan*/  iter_flags; } ;
struct inode {scalar_t__ i_private; } ;
struct file {int f_mode; int f_flags; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct trace_iterator*) ; 
 int O_TRUNC ; 
 int FUNC1 (struct trace_iterator*) ; 
 int /*<<< orphan*/  TRACE_FILE_LAT_FMT ; 
 int TRACE_ITER_LATENCY_FMT ; 
 long TRACE_PIPE_ALL_CPU ; 
 struct trace_iterator* FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  global_trace ; 
 int trace_flags ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct trace_iterator *iter;
	int ret = 0;

	/* If this file was open for write, then erase contents */
	if ((file->f_mode & FMODE_WRITE) &&
	    (file->f_flags & O_TRUNC)) {
		long cpu = (long) inode->i_private;

		if (cpu == TRACE_PIPE_ALL_CPU)
			FUNC4(&global_trace);
		else
			FUNC3(&global_trace, cpu);
	}

	if (file->f_mode & FMODE_READ) {
		iter = FUNC2(inode, file);
		if (FUNC0(iter))
			ret = FUNC1(iter);
		else if (trace_flags & TRACE_ITER_LATENCY_FMT)
			iter->iter_flags |= TRACE_FILE_LAT_FMT;
	}
	return ret;
}