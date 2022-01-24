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
struct seq_file {int dummy; } ;
struct ftrace_event_call {int /*<<< orphan*/  name; int /*<<< orphan*/  system; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	struct ftrace_event_call *call = v;

	if (FUNC1(call->system, TRACE_SYSTEM) != 0)
		FUNC0(m, "%s:", call->system);
	FUNC0(m, "%s\n", call->name);

	return 0;
}