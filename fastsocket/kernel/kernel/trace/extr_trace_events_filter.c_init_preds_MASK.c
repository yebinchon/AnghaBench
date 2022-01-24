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
struct ftrace_event_call {scalar_t__ filter; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TRACE_EVENT_FL_FILTERED ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct ftrace_event_call *call)
{
	if (call->filter)
		return 0;

	call->flags &= ~TRACE_EVENT_FL_FILTERED;
	call->filter = FUNC2();
	if (FUNC0(call->filter))
		return FUNC1(call->filter);

	return 0;
}