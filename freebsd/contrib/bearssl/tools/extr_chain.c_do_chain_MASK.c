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
struct TYPE_5__ {struct TYPE_5__* data; int /*<<< orphan*/  data_len; } ;
typedef  TYPE_1__ br_x509_certificate ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_1__* FUNC5 (char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int
FUNC9(int argc, char *argv[])
{
	int retcode;
	int verbose;
	int i, num_files;
	long k, ctr;

	retcode = 0;
	verbose = 1;
	num_files = 0;
	for (i = 0; i < argc; i ++) {
		const char *arg;

		arg = argv[i];
		if (arg[0] != '-') {
			num_files ++;
			continue;
		}
		argv[i] = NULL;
		if (FUNC0(arg, "-v") || FUNC0(arg, "-verbose")) {
			verbose = 1;
		} else if (FUNC0(arg, "-q") || FUNC0(arg, "-quiet")) {
			verbose = 0;
		} else {
			FUNC2(stderr, "ERROR: unknown option: '%s'\n", arg);
			FUNC7();
			goto chain_exit_error;
		}
	}
	if (num_files == 0) {
		FUNC2(stderr, "ERROR: no certificate file provided\n");
		FUNC7();
		goto chain_exit_error;
	}

	ctr = 0;
	for (i = 0; i < argc; i ++) {
		const char *fname;
		br_x509_certificate *xcs;
		size_t u, num;

		fname = argv[i];
		if (fname == NULL) {
			continue;
		}
		if (verbose) {
			FUNC2(stderr, "Reading file '%s': ", fname);
			FUNC1(stderr);
		}
		xcs = FUNC5(fname, &num);
		if (xcs == NULL) {
			goto chain_exit_error;
		}
		if (verbose) {
			FUNC2(stderr, "%lu certificate%s\n",
				(unsigned long)num, num > 1 ? "s" : "");
		}
		for (u = 0; u < num; u ++) {
			char tmp[50];

			FUNC6(tmp, "CERT%ld", ctr ++);
			FUNC3(tmp, xcs[u].data, xcs[u].data_len);
			FUNC8(xcs[u].data);
		}
		FUNC8(xcs);
	}

	FUNC4("\nstatic const br_x509_certificate CHAIN[] = {");
	for (k = 0; k < ctr; k ++) {
		if (k != 0) {
			FUNC4(",");
		}
		FUNC4("\n\t{ (unsigned char *)CERT%ld, sizeof CERT%ld }",
			k, k);
	}
	FUNC4("\n};\n");
	FUNC4("\n#define CHAIN_LEN   %ld\n", ctr);

	/*
	 * Release allocated structures.
	 */
chain_exit:
	return retcode;

chain_exit_error:
	retcode = -1;
	goto chain_exit;
}