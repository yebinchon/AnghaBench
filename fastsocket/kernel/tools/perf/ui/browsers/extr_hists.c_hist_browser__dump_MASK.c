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
struct hist_browser {int print_seq; } ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  bf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hist_browser*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(struct hist_browser *browser)
{
	char filename[64];
	FILE *fp;

	while (1) {
		FUNC4(filename, sizeof(filename), "perf.hist.%d", browser->print_seq);
		if (FUNC0(filename, F_OK))
			break;
		/*
 		 * XXX: Just an arbitrary lazy upper limit
 		 */
		if (++browser->print_seq == 8192) {
			FUNC6("Too many perf.hist.N files, nothing written!");
			return -1;
		}
	}

	fp = FUNC2(filename, "w");
	if (fp == NULL) {
		char bf[64];
		const char *err = FUNC5(errno, bf, sizeof(bf));
		FUNC6("Couldn't write to %s: %s", filename, err);
		return -1;
	}

	++browser->print_seq;
	FUNC3(browser, fp);
	FUNC1(fp);
	FUNC6("%s written!", filename);

	return 0;
}