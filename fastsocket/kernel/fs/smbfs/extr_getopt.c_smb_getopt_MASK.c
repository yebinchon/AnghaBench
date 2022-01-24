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
struct option {unsigned long flag; int val; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 unsigned long FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (char**,char*) ; 

int FUNC5(char *caller, char **options, struct option *opts,
	       char **optopt, char **optarg, unsigned long *flag,
	       unsigned long *value)
{
	char *token;
	char *val;
	int i;

	do {
		if ((token = FUNC4(options, ",")) == NULL)
			return 0;
	} while (*token == '\0');
	*optopt = token;

	*optarg = NULL;
	if ((val = FUNC2 (token, '=')) != NULL) {
		*val++ = 0;
		if (value)
			*value = FUNC1(val, NULL, 0);
		*optarg = val;
	}

	for (i = 0; opts[i].name != NULL; i++) {
		if (!FUNC3(opts[i].name, token)) {
			if (!opts[i].flag && (!val || !*val)) {
				FUNC0("%s: the %s option requires an argument\n",
				       caller, token);
				return -1;
			}

			if (flag && opts[i].flag)
				*flag |= opts[i].flag;

			return opts[i].val;
		}
	}
	FUNC0("%s: Unrecognized mount option %s\n", caller, token);
	return -1;
}