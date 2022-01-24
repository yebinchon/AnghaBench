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
 int AUTOFS_MAX_PROTO_VERSION ; 
 int AUTOFS_MIN_PROTO_VERSION ; 
 int MAX_OPT_ARGS ; 
#define  Opt_direct 136 
#define  Opt_fd 135 
#define  Opt_gid 134 
#define  Opt_indirect 133 
#define  Opt_maxproto 132 
#define  Opt_minproto 131 
#define  Opt_offset 130 
#define  Opt_pgrp 129 
#define  Opt_uid 128 
 int /*<<< orphan*/  current ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*) ; 
 char* FUNC7 (char**,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC9(char *options, int *pipefd, uid_t *uid, gid_t *gid,
		pid_t *pgrp, unsigned int *type, int *minproto, int *maxproto)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int option;

	*uid = FUNC1();
	*gid = FUNC0();
	*pgrp = FUNC8(current);

	*minproto = AUTOFS_MIN_PROTO_VERSION;
	*maxproto = AUTOFS_MAX_PROTO_VERSION;

	*pipefd = -1;

	if (!options)
		return 1;

	while ((p = FUNC7(&options, ",")) != NULL) {
		int token;
		if (!*p)
			continue;

		token = FUNC3(p, tokens, args);
		switch (token) {
		case Opt_fd:
			if (FUNC2(args, pipefd))
				return 1;
			break;
		case Opt_uid:
			if (FUNC2(args, &option))
				return 1;
			*uid = option;
			break;
		case Opt_gid:
			if (FUNC2(args, &option))
				return 1;
			*gid = option;
			break;
		case Opt_pgrp:
			if (FUNC2(args, &option))
				return 1;
			*pgrp = option;
			break;
		case Opt_minproto:
			if (FUNC2(args, &option))
				return 1;
			*minproto = option;
			break;
		case Opt_maxproto:
			if (FUNC2(args, &option))
				return 1;
			*maxproto = option;
			break;
		case Opt_indirect:
			FUNC5(type);
			break;
		case Opt_direct:
			FUNC4(type);
			break;
		case Opt_offset:
			FUNC6(type);
			break;
		default:
			return 1;
		}
	}
	return (*pipefd < 0);
}