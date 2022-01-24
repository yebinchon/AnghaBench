#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pattern_t ;
struct TYPE_5__ {int /*<<< orphan*/  len; struct TYPE_5__* q_forw; } ;
typedef  TYPE_1__ line_t ;

/* Variables and functions */
 int ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* errmsg ; 
 long first_addr ; 
 TYPE_1__* FUNC2 (long) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 char* FUNC4 (TYPE_1__*) ; 
 char* ibufp ; 
 scalar_t__ isbinary ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long second_addr ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

int
FUNC7(int isgcmd)
{
	pattern_t *pat;
	line_t *lp;
	long n;
	char *s;
	char delimiter;

	if ((delimiter = *ibufp) == ' ' || delimiter == '\n') {
		errmsg = "invalid pattern delimiter";
		return ERR;
	} else if ((pat = FUNC3()) == NULL)
		return ERR;
	else if (*ibufp == delimiter)
		ibufp++;
	FUNC1();
	lp = FUNC2(first_addr);
	for (n = first_addr; n <= second_addr; n++, lp = lp->q_forw) {
		if ((s = FUNC4(lp)) == NULL)
			return ERR;
		if (isbinary)
			FUNC0(s, lp->len);
		if (!(FUNC5(pat, s, 0, NULL, 0) == isgcmd) &&
		    FUNC6(lp) < 0)
			return ERR;
	}
	return 0;
}