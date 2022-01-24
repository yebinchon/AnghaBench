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
typedef  int uid_t ;
typedef  int /*<<< orphan*/  substring_t ;
typedef  int pid_t ;
typedef  int gid_t ;

/* Variables and functions */
 int AUTOFS_PROTO_VERSION ; 
 int MAX_OPT_ARGS ; 
#define  Opt_fd 133 
#define  Opt_gid 132 
#define  Opt_maxproto 131 
#define  Opt_minproto 130 
#define  Opt_pgrp 129 
#define  Opt_uid 128 
 int /*<<< orphan*/  autofs_tokens ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char**,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(char *options, int *pipefd, uid_t *uid, gid_t *gid,
		pid_t *pgrp, int *minproto, int *maxproto)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int option;

	*uid = FUNC1();
	*gid = FUNC0();
	*pgrp = FUNC5(current);

	*minproto = *maxproto = AUTOFS_PROTO_VERSION;

	*pipefd = -1;

	if (!options)
		return 1;

	while ((p = FUNC4(&options, ",")) != NULL) {
		int token;
		if (!*p)
			continue;

		token = FUNC3(p, autofs_tokens, args);
		switch (token) {
		case Opt_fd:
			if (FUNC2(&args[0], &option))
				return 1;
			*pipefd = option;
			break;
		case Opt_uid:
			if (FUNC2(&args[0], &option))
				return 1;
			*uid = option;
			break;
		case Opt_gid:
			if (FUNC2(&args[0], &option))
				return 1;
			*gid = option;
			break;
		case Opt_pgrp:
			if (FUNC2(&args[0], &option))
				return 1;
			*pgrp = option;
			break;
		case Opt_minproto:
			if (FUNC2(&args[0], &option))
				return 1;
			*minproto = option;
			break;
		case Opt_maxproto:
			if (FUNC2(&args[0], &option))
				return 1;
			*maxproto = option;
			break;
		default:
			return 1;
		}
	}
	return (*pipefd < 0);
}