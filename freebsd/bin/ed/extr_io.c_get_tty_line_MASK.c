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

/* Variables and functions */
#define  EOF 128 
 int ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* errmsg ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 () ; 
 char* ibuf ; 
 char* ibufp ; 
 int /*<<< orphan*/  ibufsz ; 
 int isbinary ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(void)
{
	int oi = 0;
	int i = 0;
	int c;

	for (;;)
		switch (c = FUNC4()) {
		default:
			oi = 0;
			FUNC0(ibuf, ibufsz, i + 2, ERR);
			if (!(ibuf[i++] = c)) isbinary = 1;
			if (c != '\n')
				continue;
			lineno++;
			ibuf[i] = '\0';
			ibufp = ibuf;
			return i;
		case EOF:
			if (FUNC2(stdin)) {
				FUNC3(stderr, "stdin: %s\n", FUNC5(errno));
				errmsg = "cannot read stdin";
				FUNC1(stdin);
				ibufp = NULL;
				return ERR;
			} else {
				FUNC1(stdin);
				if (i != oi) {
					oi = i;
					continue;
				} else if (i)
					ibuf[i] = '\0';
				ibufp = ibuf;
				return i;
			}
		}
}