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
struct ftrace_event_call {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ftrace_event_call*) ; 
 int /*<<< orphan*/  event_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ftrace_event_call *call)
{
	int ret;
	FUNC1(&event_mutex);
	ret = FUNC0(call);
	FUNC2(&event_mutex);
	return ret;
}