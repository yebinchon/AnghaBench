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
struct exofs_mountopt {int timeout; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int BLK_DEFAULT_SG_TIMEOUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  EXOFS_MIN_PID ; 
 int HZ ; 
 int MAX_OPT_ARGS ; 
#define  Opt_pid 129 
#define  Opt_to 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct exofs_mountopt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC8(char *options, struct exofs_mountopt *opts)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int option;
	bool s_pid = false;

	FUNC0("parse_options %s\n", options);
	/* defaults */
	FUNC5(opts, 0, sizeof(*opts));
	opts->timeout = BLK_DEFAULT_SG_TIMEOUT;

	while ((p = FUNC7(&options, ",")) != NULL) {
		int token;
		char str[32];

		if (!*p)
			continue;

		token = FUNC4(p, tokens, args);
		switch (token) {
		case Opt_pid:
			if (0 == FUNC3(str, &args[0], sizeof(str)))
				return -EINVAL;
			opts->pid = FUNC6(str, NULL, 0);
			if (opts->pid < EXOFS_MIN_PID) {
				FUNC1("Partition ID must be >= %u",
					  EXOFS_MIN_PID);
				return -EINVAL;
			}
			s_pid = 1;
			break;
		case Opt_to:
			if (FUNC2(&args[0], &option))
				return -EINVAL;
			if (option <= 0) {
				FUNC1("Timout must be > 0");
				return -EINVAL;
			}
			opts->timeout = option * HZ;
			break;
		}
	}

	if (!s_pid) {
		FUNC1("Need to specify the following options:\n");
		FUNC1("    -o pid=pid_no_to_use\n");
		return -EINVAL;
	}

	return 0;
}