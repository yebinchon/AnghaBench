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
struct filter {int /*<<< orphan*/ * extra; int /*<<< orphan*/  next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* check_4_gnu_m4 ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char*,char*,int /*<<< orphan*/ *) ; 
 char* headerfilename ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 char* outfilename ; 
 char* prefix ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17 (struct filter *chain)
{
	/* This function reads from stdin and writes to both the C file and the
	 * header file at the same time.
	 */

	const int readsz = 512;
	char   *buf;
	int     to_cfd = -1;
	FILE   *to_c = NULL, *to_h = NULL;
	bool    write_header;

	write_header = (chain->extra != NULL);

	/* Store a copy of the stdout pipe, which is already piped to C file
	 * through the running chain. Then create a new pipe to the H file as
	 * stdout, and fork the rest of the chain again.
	 */

	if ((to_cfd = FUNC1 (1)) == -1)
		FUNC11 (FUNC0("dup(1) failed"));
	to_c = FUNC4 (to_cfd, "w");

	if (write_header) {
		if (FUNC14 ((char *) chain->extra, "w", stdout) == NULL)
			FUNC11 (FUNC0("freopen(headerfilename) failed"));

		FUNC8 (chain->next);
		to_h = stdout;
	}

	/* Now to_c is a pipe to the C branch, and to_h is a pipe to the H branch.
	 */

	if (write_header) {
        FUNC13 (check_4_gnu_m4, to_h);
		FUNC13 ("m4_changecom`'m4_dnl\n", to_h);
		FUNC13 ("m4_changequote`'m4_dnl\n", to_h);
		FUNC13 ("m4_changequote([[,]])[[]]m4_dnl\n", to_h);
	    FUNC13 ("m4_define([[M4_YY_NOOP]])[[]]m4_dnl\n", to_h);
		FUNC13 ("m4_define( [[M4_YY_IN_HEADER]],[[]])m4_dnl\n",
		       to_h);
		FUNC12 (to_h, "#ifndef %sHEADER_H\n", prefix);
		FUNC12 (to_h, "#define %sHEADER_H 1\n", prefix);
		FUNC12 (to_h, "#define %sIN_HEADER 1\n\n", prefix);
		FUNC12 (to_h,
			 "m4_define( [[M4_YY_OUTFILE_NAME]],[[%s]])m4_dnl\n",
			 headerfilename ? headerfilename : "<stdout>");

	}

    FUNC13 (check_4_gnu_m4, to_c);
	FUNC13 ("m4_changecom`'m4_dnl\n", to_c);
	FUNC13 ("m4_changequote`'m4_dnl\n", to_c);
	FUNC13 ("m4_changequote([[,]])[[]]m4_dnl\n", to_c);
	FUNC13 ("m4_define([[M4_YY_NOOP]])[[]]m4_dnl\n", to_c);
	FUNC12 (to_c, "m4_define( [[M4_YY_OUTFILE_NAME]],[[%s]])m4_dnl\n",
		 outfilename ? outfilename : "<stdout>");

	buf = (char *) FUNC9 (readsz);
	if (!buf)
		FUNC10 (FUNC0("flex_alloc failed in filter_tee_header"));
	while (FUNC7 (buf, readsz, stdin)) {
		FUNC13 (buf, to_c);
		if (write_header)
			FUNC13 (buf, to_h);
	}

	if (write_header) {
		FUNC12 (to_h, "\n");

		/* write a fake line number. It will get fixed by the linedir filter. */
		FUNC12 (to_h, "#line 4000 \"M4_YY_OUTFILE_NAME\"\n");

		FUNC12 (to_h, "#undef %sIN_HEADER\n", prefix);
		FUNC12 (to_h, "#endif /* %sHEADER_H */\n", prefix);
		FUNC13 ("m4_undefine( [[M4_YY_IN_HEADER]])m4_dnl\n", to_h);

		FUNC6 (to_h);
		if (FUNC5 (to_h))
			FUNC15 (FUNC0("error writing output file %s"),
				(char *) chain->extra);

		else if (FUNC3 (to_h))
			FUNC15 (FUNC0("error closing output file %s"),
				(char *) chain->extra);
	}

	FUNC6 (to_c);
	if (FUNC5 (to_c))
		FUNC15 (FUNC0("error writing output file %s"),
			outfilename ? outfilename : "<stdout>");

	else if (FUNC3 (to_c))
		FUNC15 (FUNC0("error closing output file %s"),
			outfilename ? outfilename : "<stdout>");

	while (FUNC16 (0) > 0) ;

	FUNC2 (0);
	return 0;
}