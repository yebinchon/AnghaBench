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
struct trace_seq {int dummy; } ;
struct trace_entry {int flags; char preempt_count; char lock_depth; } ;

/* Variables and functions */
 int TRACE_FLAG_HARDIRQ ; 
 int TRACE_FLAG_IRQS_NOSUPPORT ; 
 int TRACE_FLAG_IRQS_OFF ; 
 int TRACE_FLAG_NEED_RESCHED ; 
 int TRACE_FLAG_SOFTIRQ ; 
 int FUNC0 (struct trace_seq*,char*,char,...) ; 
 int FUNC1 (struct trace_seq*,char) ; 

int FUNC2(struct trace_seq *s, struct trace_entry *entry)
{
	int hardirq, softirq;
	int ret;

	hardirq = entry->flags & TRACE_FLAG_HARDIRQ;
	softirq = entry->flags & TRACE_FLAG_SOFTIRQ;

	if (!FUNC0(s, "%c%c%c",
			      (entry->flags & TRACE_FLAG_IRQS_OFF) ? 'd' :
				(entry->flags & TRACE_FLAG_IRQS_NOSUPPORT) ?
				  'X' : '.',
			      (entry->flags & TRACE_FLAG_NEED_RESCHED) ?
				'N' : '.',
			      (hardirq && softirq) ? 'H' :
				hardirq ? 'h' : softirq ? 's' : '.'))
		return 0;

	if (entry->preempt_count)
		ret = FUNC0(s, "%x", entry->preempt_count);
	else
		ret = FUNC1(s, '.');

	if (!ret)
		return 0;

	if (entry->lock_depth < 0)
		return FUNC1(s, '.');

	return FUNC0(s, "%d", entry->lock_depth);
}