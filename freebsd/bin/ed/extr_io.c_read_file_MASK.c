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
 long ERR ; 
 long current_addr ; 
 char* errmsg ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 long FUNC5 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  scripted ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

long
FUNC8(char *fn, long n)
{
	FILE *fp;
	long size;
	int cs;

	fp = (*fn == '!') ? FUNC4(fn + 1, "r") : FUNC1(FUNC7(fn), "r");
	if (fp == NULL) {
		FUNC2(stderr, "%s: %s\n", fn, FUNC6(errno));
		errmsg = "cannot open input file";
		return ERR;
	}
	if ((size = FUNC5(fp, n)) < 0) {
		FUNC2(stderr, "%s: %s\n", fn, FUNC6(errno));
		errmsg = "error reading input file";
	}
	if ((cs = (*fn == '!') ?  FUNC3(fp) : FUNC0(fp)) < 0) {
		FUNC2(stderr, "%s: %s\n", fn, FUNC6(errno));
		errmsg = "cannot close input file";
	}
	if (size < 0 || cs < 0)
		return ERR;
	if (!scripted)
		FUNC2(stdout, "%lu\n", size);
	return current_addr - n;
}