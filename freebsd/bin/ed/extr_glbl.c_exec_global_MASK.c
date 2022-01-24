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
typedef  int /*<<< orphan*/  line_t ;

/* Variables and functions */
 long ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_addr ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* errmsg ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 char* FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 char* ibuf ; 
 char* ibufp ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

long
FUNC12(int interact, int gflag)
{
	static char *ocmd = NULL;
	static int ocmdsz = 0;

	line_t *lp = NULL;
	int status;
	int n;
	char *cmd = NULL;

#ifdef BACKWARDS
	if (!interact)
		if (!strcmp(ibufp, "\n"))
			cmd = "p\n";		/* null cmd-list == `p' */
		else if ((cmd = get_extended_line(&n, 0)) == NULL)
			return ERR;
#else
	if (!interact && (cmd = FUNC6(&n, 0)) == NULL)
		return ERR;
#endif
	FUNC1();
	while ((lp = FUNC10()) != NULL) {
		if ((current_addr = FUNC7(lp)) < 0)
			return ERR;
		if (interact) {
			/* print current_addr; get a command in global syntax */
			if (FUNC3(current_addr, current_addr, gflag) < 0)
				return ERR;
			while ((n = FUNC8()) > 0 &&
			    ibuf[n - 1] != '\n')
				FUNC2(stdin);
			if (n < 0)
				return ERR;
			else if (n == 0) {
				errmsg = "unexpected end-of-file";
				return ERR;
			} else if (n == 1 && !FUNC11(ibuf, "\n"))
				continue;
			else if (n == 2 && !FUNC11(ibuf, "&\n")) {
				if (cmd == NULL) {
					errmsg = "no previous command";
					return ERR;
				} else cmd = ocmd;
			} else if ((cmd = FUNC6(&n, 0)) == NULL)
				return ERR;
			else {
				FUNC0(ocmd, ocmdsz, n + 1, ERR);
				FUNC9(ocmd, cmd, n + 1);
				cmd = ocmd;
			}

		}
		ibufp = cmd;
		for (; *ibufp;)
			if ((status = FUNC5()) < 0 ||
			    (status = FUNC4()) < 0 ||
			    (status > 0 && (status = FUNC3(
			    current_addr, current_addr, status)) < 0))
				return status;
	}
	return 0;
}