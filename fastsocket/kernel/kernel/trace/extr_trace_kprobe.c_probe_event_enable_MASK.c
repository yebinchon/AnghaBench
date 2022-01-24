#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  kp; } ;
struct trace_probe {TYPE_1__ rp; int /*<<< orphan*/  flags; } ;
struct ftrace_event_call {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  TP_FLAG_TRACE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct trace_probe*) ; 

__attribute__((used)) static int FUNC3(struct ftrace_event_call *call)
{
	struct trace_probe *tp = (struct trace_probe *)call->data;

	tp->flags |= TP_FLAG_TRACE;
	if (FUNC2(tp))
		return FUNC1(&tp->rp);
	else
		return FUNC0(&tp->rp.kp);
}