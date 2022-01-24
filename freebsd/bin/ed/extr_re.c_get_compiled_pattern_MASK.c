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
typedef  int /*<<< orphan*/  pattern_t ;

/* Variables and functions */
 char* errmsg ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* ibufp ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ patlock ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

pattern_t *
FUNC8(void)
{
	static pattern_t *expr = NULL;
	static char error[1024];

	char *exprs;
	char delimiter;
	int n;

	if ((delimiter = *ibufp) == ' ') {
		errmsg = "invalid pattern delimiter";
		return NULL;
	} else if (delimiter == '\n' || *++ibufp == '\n' || *ibufp == delimiter) {
		if (!expr)
			errmsg = "no previous pattern";
		return expr;
	} else if ((exprs = FUNC0(delimiter)) == NULL)
		return NULL;
	/* buffer alloc'd && not reserved */
	if (expr && !patlock)
		FUNC6(expr);
	else if ((expr = (pattern_t *) FUNC3(sizeof(pattern_t))) == NULL) {
		FUNC1(stderr, "%s\n", FUNC7(errno));
		errmsg = "out of memory";
		return NULL;
	}
	patlock = 0;
	if ((n = FUNC4(expr, exprs, 0))) {
		FUNC5(n, expr, error, sizeof error);
		errmsg = error;
		FUNC2(expr);
		return expr = NULL;
	}
	return expr;
}