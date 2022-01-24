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
struct trace_probe {TYPE_1__* args; int /*<<< orphan*/  nr_args; } ;
struct TYPE_3__ {int name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct trace_probe*) ; 
 char* KPROBE_EVENT_SYSTEM ; 
 int MAX_EVENT_NAME_LEN ; 
 int MAX_TRACE_ARGS ; 
 int FUNC1 (struct trace_probe*) ; 
 struct trace_probe* FUNC2 (char*,char*,void*,char*,unsigned long,int,int) ; 
 scalar_t__ FUNC3 (int,TYPE_1__*,int) ; 
 struct trace_probe* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (char) ; 
 void* FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,struct trace_probe*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  probe_lock ; 
 int FUNC13 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int,...) ; 
 int FUNC15 (char*,unsigned long*) ; 
 char* FUNC16 (char*,char) ; 
 int FUNC17 (char*,int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC18 (char*) ; 
 int FUNC19 (struct trace_probe*) ; 

__attribute__((used)) static int FUNC20(int argc, char **argv)
{
	/*
	 * Argument syntax:
	 *  - Add kprobe: p[:[GRP/]EVENT] KSYM[+OFFS]|KADDR [FETCHARGS]
	 *  - Add kretprobe: r[:[GRP/]EVENT] KSYM[+0] [FETCHARGS]
	 * Fetch args:
	 *  $retval	: fetch return value
	 *  $stack	: fetch stack address
	 *  $stackN	: fetch Nth of stack (N:0-)
	 *  @ADDR	: fetch memory at ADDR (ADDR should be in kernel)
	 *  @SYM[+|-offs] : fetch memory at SYM +|- offs (SYM is a data symbol)
	 *  %REG	: fetch register REG
	 * Dereferencing memory fetch:
	 *  +|-offs(ARG) : fetch memory at ARG +|- offs address.
	 * Alias name of args:
	 *  NAME=FETCHARG : set NAME as alias of FETCHARG.
	 * Type of args:
	 *  FETCHARG:TYPE : use TYPE instead of unsigned long.
	 */
	struct trace_probe *tp;
	int i, ret = 0;
	bool is_return = false, is_delete = false;
	char *symbol = NULL, *event = NULL, *group = NULL;
	char *arg;
	unsigned long offset = 0;
	void *addr = NULL;
	char buf[MAX_EVENT_NAME_LEN];

	/* argc must be >= 1 */
	if (argv[0][0] == 'p')
		is_return = false;
	else if (argv[0][0] == 'r')
		is_return = true;
	else if (argv[0][0] == '-')
		is_delete = true;
	else {
		FUNC12("Probe definition must be started with 'p', 'r' or"
			" '-'.\n");
		return -EINVAL;
	}

	if (argv[0][1] == ':') {
		event = &argv[0][2];
		if (FUNC16(event, '/')) {
			group = event;
			event = FUNC16(group, '/') + 1;
			event[-1] = '\0';
			if (FUNC18(group) == 0) {
				FUNC12("Group name is not specified\n");
				return -EINVAL;
			}
		}
		if (FUNC18(event) == 0) {
			FUNC12("Event name is not specified\n");
			return -EINVAL;
		}
	}
	if (!group)
		group = KPROBE_EVENT_SYSTEM;

	if (is_delete) {
		if (!event) {
			FUNC12("Delete command needs an event name.\n");
			return -EINVAL;
		}
		FUNC9(&probe_lock);
		tp = FUNC4(event, group);
		if (!tp) {
			FUNC10(&probe_lock);
			FUNC12("Event %s/%s doesn't exist.\n", group, event);
			return -ENOENT;
		}
		/* delete an event */
		ret = FUNC19(tp);
		if (ret == 0)
			FUNC5(tp);
		FUNC10(&probe_lock);
		return ret;
	}

	if (argc < 2) {
		FUNC12("Probe point is not specified.\n");
		return -EINVAL;
	}
	if (FUNC7(argv[1][0])) {
		if (is_return) {
			FUNC12("Return probe point must be a symbol.\n");
			return -EINVAL;
		}
		/* an address specified */
		ret = FUNC17(&argv[1][0], 0, (unsigned long *)&addr);
		if (ret) {
			FUNC12("Failed to parse address.\n");
			return ret;
		}
	} else {
		/* a symbol specified */
		symbol = argv[1];
		/* TODO: support .init module functions */
		ret = FUNC15(symbol, &offset);
		if (ret) {
			FUNC12("Failed to parse symbol.\n");
			return ret;
		}
		if (offset && is_return) {
			FUNC12("Return probe must be used without offset.\n");
			return -EINVAL;
		}
	}
	argc -= 2; argv += 2;

	/* setup a probe */
	if (!event) {
		/* Make a new event name */
		if (symbol)
			FUNC14(buf, MAX_EVENT_NAME_LEN, "%c_%s_%ld",
				 is_return ? 'r' : 'p', symbol, offset);
		else
			FUNC14(buf, MAX_EVENT_NAME_LEN, "%c_0x%p",
				 is_return ? 'r' : 'p', addr);
		event = buf;
	}
	tp = FUNC2(group, event, addr, symbol, offset, argc,
			       is_return);
	if (FUNC0(tp)) {
		FUNC12("Failed to allocate trace_probe.(%d)\n",
			(int)FUNC1(tp));
		return FUNC1(tp);
	}

	/* parse arguments */
	ret = 0;
	for (i = 0; i < argc && i < MAX_TRACE_ARGS; i++) {
		/* Increment count for freeing args in error case */
		tp->nr_args++;

		/* Parse argument name */
		arg = FUNC16(argv[i], '=');
		if (arg) {
			*arg++ = '\0';
			tp->args[i].name = FUNC8(argv[i], GFP_KERNEL);
		} else {
			arg = argv[i];
			/* If argument name is omitted, set "argN" */
			FUNC14(buf, MAX_EVENT_NAME_LEN, "arg%d", i + 1);
			tp->args[i].name = FUNC8(buf, GFP_KERNEL);
		}

		if (!tp->args[i].name) {
			FUNC12("Failed to allocate argument[%d] name.\n", i);
			ret = -ENOMEM;
			goto error;
		}

		if (!FUNC6(tp->args[i].name)) {
			FUNC12("Invalid argument[%d] name: %s\n",
				i, tp->args[i].name);
			ret = -EINVAL;
			goto error;
		}

		if (FUNC3(tp->args[i].name, tp->args, i)) {
			FUNC12("Argument[%d] name '%s' conflicts with "
				"another field.\n", i, argv[i]);
			ret = -EINVAL;
			goto error;
		}

		/* Parse fetch argument */
		ret = FUNC11(arg, tp, &tp->args[i], is_return);
		if (ret) {
			FUNC12("Parse error at argument[%d]. (%d)\n", i, ret);
			goto error;
		}
	}

	ret = FUNC13(tp);
	if (ret)
		goto error;
	return 0;

error:
	FUNC5(tp);
	return ret;
}