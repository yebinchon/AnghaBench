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
typedef  int /*<<< orphan*/  substring_t ;
struct p9_fd_opts {int port; int rfd; int wfd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
 int Opt_err ; 
#define  Opt_port 130 
#define  Opt_rfdno 129 
#define  Opt_wfdno 128 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int P9_PORT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC6(char *params, struct p9_fd_opts *opts)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int option;
	char *options;
	int ret;

	opts->port = P9_PORT;
	opts->rfd = ~0;
	opts->wfd = ~0;

	if (!params)
		return 0;

	options = FUNC2(params, GFP_KERNEL);
	if (!options) {
		FUNC0(P9_DEBUG_ERROR,
				"failed to allocate copy of option string\n");
		return -ENOMEM;
	}

	while ((p = FUNC5(&options, ",")) != NULL) {
		int token;
		int r;
		if (!*p)
			continue;
		token = FUNC4(p, tokens, args);
		if (token != Opt_err) {
			r = FUNC3(&args[0], &option);
			if (r < 0) {
				FUNC0(P9_DEBUG_ERROR,
				"integer field, but no integer?\n");
				ret = r;
				continue;
			}
		}
		switch (token) {
		case Opt_port:
			opts->port = option;
			break;
		case Opt_rfdno:
			opts->rfd = option;
			break;
		case Opt_wfdno:
			opts->wfd = option;
			break;
		default:
			continue;
		}
	}
	FUNC1(options);
	return 0;
}