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
 int /*<<< orphan*/  CONFFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 char* all_chains ; 
 size_t all_chains_ptr ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  free_key ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  free_trust_anchor ; 
 int /*<<< orphan*/  keys ; 
 scalar_t__ max_dp_usage ; 
 scalar_t__ max_rp_usage ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  trust_anchors ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (size_t) ; 

int
FUNC13(int argc, const char *argv[])
{
	size_t u;

#ifdef SRCDIRNAME
	/*
	 * We want to change the current directory to that of the
	 * executable, so that test files are reliably located. We
	 * do that only if SRCDIRNAME is defined (old Makefile would
	 * not do that).
	 */
	if (argc >= 1) {
		const char *arg, *c;

		arg = argv[0];
		for (c = arg + strlen(arg);; c --) {
			int sep, r;

#ifdef _WIN32
			sep = (*c == '/') || (*c == '\\');
#else
			sep = (*c == '/');
#endif
			if (sep) {
				size_t len;
				char *dn;

				len = 1 + (c - arg);
				dn = xmalloc(len + 1);
				memcpy(dn, arg, len);
				dn[len] = 0;
#ifdef _WIN32
				r = _chdir(dn);
#else
				r = chdir(dn);
#endif
				if (r != 0) {
					fprintf(stderr, "warning: could not"
						" set directory to '%s'\n", dn);
				}
				xfree(dn);
				break;
			}
			if (c == arg) {
				break;
			}
		}
	}
#else
	(void)argc;
	(void)argv;
#endif

	FUNC7(CONFFILE);

	max_dp_usage = 0;
	max_rp_usage = 0;
	for (u = 0; u < all_chains_ptr; u ++) {
		FUNC8(&all_chains[u]);
	}
	FUNC10();

	FUNC6("Maximum data stack usage:    %u\n", (unsigned)max_dp_usage);
	FUNC6("Maximum return stack usage:  %u\n", (unsigned)max_rp_usage);

	FUNC0(keys, free_key);
	FUNC0(trust_anchors, free_trust_anchor);
	for (u = 0; u < all_chains_ptr; u ++) {
		FUNC4(&all_chains[u]);
	}
	FUNC11(all_chains);

	return 0;
}