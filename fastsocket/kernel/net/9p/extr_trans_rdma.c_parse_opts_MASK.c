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
struct p9_rdma_opts {int port; int sq_depth; int rq_depth; int timeout; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_port 131 
#define  Opt_rq_depth 130 
#define  Opt_sq_depth 129 
#define  Opt_timeout 128 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int P9_PORT ; 
 int P9_RDMA_RQ_DEPTH ; 
 int P9_RDMA_SQ_DEPTH ; 
 int P9_RDMA_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC7(char *params, struct p9_rdma_opts *opts)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int option;
	char *options;
	int ret;

	opts->port = P9_PORT;
	opts->sq_depth = P9_RDMA_SQ_DEPTH;
	opts->rq_depth = P9_RDMA_RQ_DEPTH;
	opts->timeout = P9_RDMA_TIMEOUT;

	if (!params)
		return 0;

	options = FUNC2(params, GFP_KERNEL);
	if (!options) {
		FUNC0(P9_DEBUG_ERROR,
			   "failed to allocate copy of option string\n");
		return -ENOMEM;
	}

	while ((p = FUNC6(&options, ",")) != NULL) {
		int token;
		int r;
		if (!*p)
			continue;
		token = FUNC4(p, tokens, args);
		r = FUNC3(&args[0], &option);
		if (r < 0) {
			FUNC0(P9_DEBUG_ERROR,
				   "integer field, but no integer?\n");
			ret = r;
			continue;
		}
		switch (token) {
		case Opt_port:
			opts->port = option;
			break;
		case Opt_sq_depth:
			opts->sq_depth = option;
			break;
		case Opt_rq_depth:
			opts->rq_depth = option;
			break;
		case Opt_timeout:
			opts->timeout = option;
			break;
		default:
			continue;
		}
	}
	/* RQ must be at least as large as the SQ */
	opts->rq_depth = FUNC5(opts->rq_depth, opts->sq_depth);
	FUNC1(options);
	return 0;
}