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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 char* errmsg ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int isbinary ; 
 int newline_added ; 
 char* sbuf ; 
 int /*<<< orphan*/  sbufsz ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(FILE *fp)
{
	int c;
	int i = 0;

	while (((c = FUNC4(fp)) != EOF || (!FUNC1(fp) && !FUNC2(fp))) &&
	    c != '\n') {
		FUNC0(sbuf, sbufsz, i + 1, ERR);
		if (!(sbuf[i++] = c))
			isbinary = 1;
	}
	FUNC0(sbuf, sbufsz, i + 2, ERR);
	if (c == '\n')
		sbuf[i++] = c;
	else if (FUNC2(fp)) {
		FUNC3(stderr, "%s\n", FUNC5(errno));
		errmsg = "cannot read input file";
		return ERR;
	} else if (i) {
		sbuf[i++] = '\n';
		newline_added = 1;
	}
	sbuf[i] = '\0';
	return (isbinary && newline_added && i) ? --i : i;
}