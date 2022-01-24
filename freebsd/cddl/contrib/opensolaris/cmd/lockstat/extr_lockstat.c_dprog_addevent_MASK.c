#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ev_name; char ev_type; char* ev_predicate; int /*<<< orphan*/ * ev_acquire; } ;
typedef  TYPE_1__ ls_event_info_t ;
typedef  int /*<<< orphan*/  hrtime_t ;

/* Variables and functions */
 scalar_t__ LS_HIST ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* g_event_info ; 
 char* g_ipredicate ; 
 int /*<<< orphan*/ * g_min_duration ; 
 char* g_predicate ; 
 scalar_t__ g_recsize ; 
 scalar_t__ g_tracing ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC5(int event)
{
	ls_event_info_t *info = &g_event_info[event];
	char *pred = NULL;
	char stack[20];
	const char *arg0, *caller;
	char *arg1 = "arg1";
	char buf[80];
	hrtime_t dur;
	int depth;

	if (info->ev_name[0] == '\0')
		return;

	if (info->ev_type == 'I') {
		/*
		 * For interrupt events, arg0 (normally the lock pointer) is
		 * the CPU address plus the current pil, and arg1 (normally
		 * the number of nanoseconds) is the number of nanoseconds
		 * late -- and it's stored in arg2.
		 */
#ifdef illumos
		arg0 = "(uintptr_t)curthread->t_cpu + \n"
		    "\t    curthread->t_cpu->cpu_profile_pil";
#else
		arg0 = "(uintptr_t)(curthread->td_oncpu << 16) + \n"
		    "\t    0x01000000 + curthread->td_pri_class";
#endif
		caller = "(uintptr_t)arg0";
		arg1 = "arg2";
	} else {
#ifdef illumos
		arg0 = "(uintptr_t)arg0";
#else
		arg0 = "stringof(args[0]->lock_object.lo_name)";
#endif
		caller = "caller";
	}

	if (g_recsize > LS_HIST) {
		for (depth = 0; g_recsize > FUNC0(depth); depth++)
			continue;

		if (g_tracing) {
			(void) FUNC4(stack, "\tstack(%d);\n", depth);
		} else {
			(void) FUNC4(stack, ", stack(%d)", depth);
		}
	} else {
		(void) FUNC4(stack, "");
	}

	if (info->ev_acquire != NULL) {
		/*
		 * If this is a hold event, we need to generate an additional
		 * clause for the acquire; the clause for the release will be
		 * generated with the aggregating statement, below.
		 */
		FUNC1("%s\n", info->ev_acquire);
		FUNC2(&pred, info->ev_predicate, NULL, 0);
		FUNC2(&pred, g_predicate, NULL, 0);
		if (pred != NULL)
			FUNC1("/%s/\n", pred);

		FUNC1("{\n");
		(void) FUNC4(buf, "self->ev%d[(uintptr_t)arg0]", event);

		if (info->ev_type == 'H') {
			FUNC1("\t%s = timestamp;\n", buf);
		} else {
			/*
			 * If this isn't a hold event, it's the recursive
			 * error event.  For this, we simply bump the
			 * thread-local, per-lock count.
			 */
			FUNC1("\t%s++;\n", buf);
		}

		FUNC1("}\n\n");
		FUNC3(&pred);
		pred = NULL;

		if (info->ev_type == 'E') {
			/*
			 * If this is the recursive lock error event, we need
			 * to generate an additional clause to decrement the
			 * thread-local, per-lock count.  This assures that we
			 * only execute the aggregating clause if we have
			 * recursive entry.
			 */
			FUNC1("%s\n", info->ev_name);
			FUNC1("/%s/\n{\n\t%s--;\n}\n\n", buf, buf);
		}

		FUNC2(&pred, buf, NULL, 0);

		if (info->ev_type == 'H') {
			(void) FUNC4(buf, "timestamp -\n\t    "
			    "self->ev%d[(uintptr_t)arg0]", event);
		}

		arg1 = buf;
	} else {
		FUNC2(&pred, info->ev_predicate, NULL, 0);
		if (info->ev_type != 'I')
			FUNC2(&pred, g_predicate, NULL, 0);
		else
			FUNC2(&pred, g_ipredicate, NULL, 0);
	}

	if ((dur = g_min_duration[event]) != 0)
		FUNC2(&pred, arg1, ">=", dur);

	FUNC1("%s\n", info->ev_name);

	if (pred != NULL)
		FUNC1("/%s/\n", pred);
	FUNC3(&pred);

	FUNC1("{\n");

	if (g_tracing) {
		FUNC1("\ttrace(%dULL);\n", event);
		FUNC1("\ttrace(%s);\n", arg0);
		FUNC1("\ttrace(%s);\n", caller);
		FUNC1(stack);
	} else {
		/*
		 * The ordering here is important:  when we process the
		 * aggregate, we count on the fact that @avg appears before
		 * @hist in program order to assure that @avg is assigned the
		 * first aggregation variable ID and @hist assigned the
		 * second; see the comment in process_aggregate() for details.
		 */
		FUNC1("\t@avg[%dULL, %s, %s%s] = avg(%s);\n",
		    event, arg0, caller, stack, arg1);

		if (g_recsize >= LS_HIST) {
			FUNC1("\t@hist[%dULL, %s, %s%s] = quantize"
			    "(%s);\n", event, arg0, caller, stack, arg1);
		}
	}

	if (info->ev_acquire != NULL)
		FUNC1("\tself->ev%d[arg0] = 0;\n", event);

	FUNC1("}\n\n");
}