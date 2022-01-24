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
struct p9_client {int dotu; int msize; int /*<<< orphan*/  trans_mod; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_legacy 130 
#define  Opt_msize 129 
#define  Opt_trans 128 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(char *opts, struct p9_client *clnt)
{
	char *options;
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int option;
	int ret = 0;

	clnt->dotu = 1;
	clnt->msize = 8192;

	if (!opts)
		return 0;

	options = FUNC2(opts, GFP_KERNEL);
	if (!options) {
		FUNC0(P9_DEBUG_ERROR,
				"failed to allocate copy of option string\n");
		return -ENOMEM;
	}

	while ((p = FUNC5(&options, ",")) != NULL) {
		int token;
		if (!*p)
			continue;
		token = FUNC4(p, tokens, args);
		if (token < Opt_trans) {
			int r = FUNC3(&args[0], &option);
			if (r < 0) {
				FUNC0(P9_DEBUG_ERROR,
					"integer field, but no integer?\n");
				ret = r;
				continue;
			}
		}
		switch (token) {
		case Opt_msize:
			clnt->msize = option;
			break;
		case Opt_trans:
			clnt->trans_mod = FUNC6(&args[0]);
			break;
		case Opt_legacy:
			clnt->dotu = 0;
			break;
		default:
			continue;
		}
	}

	FUNC1(options);
	return ret;
}