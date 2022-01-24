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

/* Variables and functions */
 int MAX_OPT_ARGS ; 
#define  Opt_kmsg_bytes 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static void FUNC4(char *options)
{
	char		*p;
	substring_t	args[MAX_OPT_ARGS];
	int		option;

	if (!options)
		return;

	while ((p = FUNC3(&options, ",")) != NULL) {
		int token;

		if (!*p)
			continue;

		token = FUNC1(p, tokens, args);
		switch (token) {
		case Opt_kmsg_bytes:
			if (!FUNC0(&args[0], &option))
				FUNC2(option);
			break;
		}
	}
}