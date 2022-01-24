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
struct ftrace_event_call {int /*<<< orphan*/  system; int /*<<< orphan*/  list; int /*<<< orphan*/  dir; scalar_t__ event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ftrace_event_call*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftrace_event_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ftrace_event_call*) ; 

__attribute__((used)) static void FUNC7(struct ftrace_event_call *call)
{
	FUNC3(call, 0);
	if (call->event)
		FUNC0(call->event);
	FUNC1(call->dir);
	FUNC4(&call->list);
	FUNC6(call);
	FUNC2(call);
	FUNC5(call->system);
}