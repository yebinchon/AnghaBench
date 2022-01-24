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
struct trace_entry {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct trace_seq*,struct trace_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct trace_seq *s, struct trace_entry *entry, int cpu)
{
	char comm[TASK_COMM_LEN];

	FUNC0(entry->pid, comm);

	if (!FUNC2(s, "%8.8s-%-5d %3d",
			      comm, entry->pid, cpu))
		return 0;

	return FUNC1(s, entry);
}