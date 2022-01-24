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
struct parse_opt_ctx_t {char** argv; int /*<<< orphan*/ * opt; } ;
struct option {char* long_name; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPTION_END ; 
#define  PARSE_OPT_DONE 130 
#define  PARSE_OPT_HELP 129 
#define  PARSE_OPT_LIST 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct parse_opt_ctx_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct parse_opt_ctx_t*,int,char const**,int) ; 
 int FUNC4 (struct parse_opt_ctx_t*,struct option const*,char const* const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const* const*,struct option const*) ; 

int FUNC8(int argc, const char **argv, const struct option *options,
		  const char * const usagestr[], int flags)
{
	struct parse_opt_ctx_t ctx;

	FUNC5(argc, argv);

	FUNC3(&ctx, argc, argv, flags);
	switch (FUNC4(&ctx, options, usagestr)) {
	case PARSE_OPT_HELP:
		FUNC1(129);
	case PARSE_OPT_DONE:
		break;
	case PARSE_OPT_LIST:
		while (options->type != OPTION_END) {
			FUNC6("--%s ", options->long_name);
			options++;
		}
		FUNC1(130);
	default: /* PARSE_OPT_UNKNOWN */
		if (ctx.argv[0][1] == '-') {
			FUNC0("unknown option `%s'", ctx.argv[0] + 2);
		} else {
			FUNC0("unknown switch `%c'", *ctx.opt);
		}
		FUNC7(usagestr, options);
	}

	return FUNC2(&ctx);
}