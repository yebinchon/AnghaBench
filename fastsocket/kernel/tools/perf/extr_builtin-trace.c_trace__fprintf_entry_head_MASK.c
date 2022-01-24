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
typedef  int /*<<< orphan*/  u64 ;
struct trace {scalar_t__ multiple_threads; } ;
struct thread {int pid; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (struct trace*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC3(struct trace *trace, struct thread *thread,
					u64 duration, u64 tstamp, FILE *fp)
{
	size_t printed = FUNC2(trace, tstamp, fp);
	printed += FUNC1(duration, fp);

	if (trace->multiple_threads)
		printed += FUNC0(fp, "%d ", thread->pid);

	return printed;
}