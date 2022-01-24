#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct perf_top {int dont_use_callchains; } ;
struct option {scalar_t__ value; } ;
struct TYPE_5__ {int /*<<< orphan*/  order; void* print_limit; void* min_percent; int /*<<< orphan*/  mode; } ;
struct TYPE_4__ {int use_callchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAIN_FLAT ; 
 int /*<<< orphan*/  CHAIN_GRAPH_ABS ; 
 int /*<<< orphan*/  CHAIN_GRAPH_REL ; 
 int /*<<< orphan*/  CHAIN_NONE ; 
 int /*<<< orphan*/  ORDER_CALLEE ; 
 int /*<<< orphan*/  ORDER_CALLER ; 
 TYPE_2__ callchain_param ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (char*,char**) ; 
 char* FUNC6 (char*,char*) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static int
FUNC7(const struct option *opt, const char *arg, int unset)
{
	struct perf_top *top = (struct perf_top *)opt->value;
	char *tok, *tok2;
	char *endptr;

	/*
	 * --no-call-graph
	 */
	if (unset) {
		top->dont_use_callchains = true;
		return 0;
	}

	symbol_conf.use_callchain = true;

	if (!arg)
		return 0;

	tok = FUNC6((char *)arg, ",");
	if (!tok)
		return -1;

	/* get the output mode */
	if (!FUNC4(tok, "graph", FUNC3(arg)))
		callchain_param.mode = CHAIN_GRAPH_ABS;

	else if (!FUNC4(tok, "flat", FUNC3(arg)))
		callchain_param.mode = CHAIN_FLAT;

	else if (!FUNC4(tok, "fractal", FUNC3(arg)))
		callchain_param.mode = CHAIN_GRAPH_REL;

	else if (!FUNC4(tok, "none", FUNC3(arg))) {
		callchain_param.mode = CHAIN_NONE;
		symbol_conf.use_callchain = false;

		return 0;
	} else
		return -1;

	/* get the min percentage */
	tok = FUNC6(NULL, ",");
	if (!tok)
		goto setup;

	callchain_param.min_percent = FUNC5(tok, &endptr);
	if (tok == endptr)
		return -1;

	/* get the print limit */
	tok2 = FUNC6(NULL, ",");
	if (!tok2)
		goto setup;

	if (tok2[0] != 'c') {
		callchain_param.print_limit = FUNC5(tok2, &endptr);
		tok2 = FUNC6(NULL, ",");
		if (!tok2)
			goto setup;
	}

	/* get the call chain order */
	if (!FUNC2(tok2, "caller"))
		callchain_param.order = ORDER_CALLER;
	else if (!FUNC2(tok2, "callee"))
		callchain_param.order = ORDER_CALLEE;
	else
		return -1;
setup:
	if (FUNC0(&callchain_param) < 0) {
		FUNC1(stderr, "Can't register callchain params\n");
		return -1;
	}
	return 0;
}