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
struct trace_iterator {int iter_flags; } ;
struct seq_file {struct trace_iterator* private; } ;

/* Variables and functions */
 int TRACE_FILE_LAT_FMT ; 
 int TRACE_ITER_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct trace_iterator*) ; 
 scalar_t__ FUNC3 (struct trace_iterator*) ; 
 int trace_flags ; 

void FUNC4(struct seq_file *m)
{
	struct trace_iterator *iter = m->private;

	if (iter->iter_flags & TRACE_FILE_LAT_FMT) {
		/* print nothing if the buffers are empty */
		if (FUNC3(iter))
			return;
		FUNC2(m, iter);
		if (!(trace_flags & TRACE_ITER_VERBOSE))
			FUNC1(m);
	} else {
		if (!(trace_flags & TRACE_ITER_VERBOSE))
			FUNC0(m);
	}
}