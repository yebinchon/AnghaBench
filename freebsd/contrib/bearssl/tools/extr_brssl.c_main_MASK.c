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
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,char**) ; 
 scalar_t__ FUNC3 (int,char**) ; 
 scalar_t__ FUNC4 (int,char**) ; 
 scalar_t__ FUNC5 (int,char**) ; 
 scalar_t__ FUNC6 (int,char**) ; 
 scalar_t__ FUNC7 (int,char**) ; 
 int FUNC8 (int,char**) ; 
 scalar_t__ FUNC9 (int,char**) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13(int argc, char *argv[])
{
	char *cmd;

	if (argc < 2) {
		FUNC12();
		return EXIT_FAILURE;
	}
#ifdef _WIN32
	{
		WSADATA wd;
		int r;

		r = WSAStartup(MAKEWORD(2, 2), &wd);
		if (r != 0) {
			fprintf(stderr, "WARNING: network initialisation"
				" failed (WSAStartup() returned %d)\n", r);
		}
	}
#endif
	cmd = argv[1];
	if (FUNC10(cmd, "client")) {
		if (FUNC3(argc - 2, argv + 2) < 0) {
			return EXIT_FAILURE;
		}
	} else if (FUNC10(cmd, "server")) {
		if (FUNC5(argc - 2, argv + 2) < 0) {
			return EXIT_FAILURE;
		}
	} else if (FUNC10(cmd, "verify")) {
		if (FUNC9(argc - 2, argv + 2) < 0) {
			return EXIT_FAILURE;
		}
	} else if (FUNC10(cmd, "skey")) {
		if (FUNC6(argc - 2, argv + 2) < 0) {
			return EXIT_FAILURE;
		}
	} else if (FUNC10(cmd, "ta")) {
		if (FUNC7(argc - 2, argv + 2) < 0) {
			return EXIT_FAILURE;
		}
	} else if (FUNC10(cmd, "chain")) {
		if (FUNC2(argc - 2, argv + 2) < 0) {
			return EXIT_FAILURE;
		}
	} else if (FUNC10(cmd, "twrch")) {
		int ret;

		ret = FUNC8(argc - 2, argv + 2);
		if (ret < 0) {
			return EXIT_FAILURE;
		} else {
			return ret;
		}
	} else if (FUNC10(cmd, "impl")) {
		if (FUNC4(argc - 2, argv + 2) < 0) {
			return EXIT_FAILURE;
		}
	} else {
		FUNC11(stderr, "unknown command: '%s'\n", cmd);
		FUNC12();
		return EXIT_FAILURE;
	}
	return 0;
}