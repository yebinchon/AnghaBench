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
struct ftrace_event_call {int flags; int (* regfunc ) (struct ftrace_event_call*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  (* unregfunc ) (struct ftrace_event_call*) ;} ;

/* Variables and functions */
 int TRACE_EVENT_FL_ENABLED ; 
 int TRACE_EVENT_FL_RECORDED_CMD ; 
 int TRACE_ITER_RECORD_CMD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ftrace_event_call*) ; 
 int FUNC2 (struct ftrace_event_call*) ; 
 int trace_flags ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct ftrace_event_call *call,
					int enable)
{
	int ret = 0;

	switch (enable) {
	case 0:
		if (call->flags & TRACE_EVENT_FL_ENABLED) {
			call->flags &= ~TRACE_EVENT_FL_ENABLED;
			if (call->flags & TRACE_EVENT_FL_RECORDED_CMD) {
				FUNC4();
				call->flags &= ~TRACE_EVENT_FL_RECORDED_CMD;
			}
			call->unregfunc(call);
		}
		break;
	case 1:
		if (!(call->flags & TRACE_EVENT_FL_ENABLED)) {
			if (trace_flags & TRACE_ITER_RECORD_CMD) {
				FUNC3();
				call->flags |= TRACE_EVENT_FL_RECORDED_CMD;
			}
			ret = call->regfunc(call);
			if (ret) {
				FUNC4();
				FUNC0("event trace: Could not enable event "
					"%s\n", call->name);
				break;
			}
			call->flags |= TRACE_EVENT_FL_ENABLED;
		}
		break;
	}

	return ret;
}