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
struct filter {int dummy; } ;
typedef  int /*<<< orphan*/  regmatch_t ;

/* Variables and functions */
 int MAXLINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* headerfilename ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 char* outfilename ; 
 int /*<<< orphan*/  regex_blank_line ; 
 int /*<<< orphan*/  regex_linedir ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int const,char*,int,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC14 (char*,char*) ; 

int FUNC15 (struct filter *chain)
{
	char   *buf;
	const int readsz = 512;
	int     lineno = 1;
	bool    in_gen = true;	/* in generated code */
	bool    last_was_blank = false;

	if (!chain)
		return 0;

	buf = (char *) FUNC5 (readsz);
	if (!buf)
		FUNC6 (FUNC0("flex_alloc failed in filter_fix_linedirs"));

	while (FUNC4 (buf, readsz, stdin)) {

		regmatch_t m[10];

		/* Check for #line directive. */
		if (buf[0] == '#'
			&& FUNC10 (&regex_linedir, buf, 3, m, 0) == 0) {

			int     num;
			char   *fname;

			/* extract the line number and filename */
			num = FUNC12 (&m[1], buf, NULL, 0);
			fname = FUNC11 (&m[2], buf);

			if (FUNC14 (fname,
				outfilename ? outfilename : "<stdout>")
					== 0
			 || FUNC14 (fname,
			 	headerfilename ? headerfilename : "<stdout>")
					== 0) {

				char    *s1, *s2;
				char	filename[MAXLINE];

				s1 = fname;
				s2 = filename;

				while ((s2 - filename) < (MAXLINE - 1) && *s1) {
					/* Escape the backslash */
					if (*s1 == '\\')
						*s2++ = '\\';
					/* Escape the double quote */
					if (*s1 == '\"')
						*s2++ = '\\';
					/* Copy the character as usual */
					*s2++ = *s1++;
				}

				*s2 = '\0';

				/* Adjust the line directives. */
				in_gen = true;
				FUNC13 (buf, readsz, "#line %d \"%s\"\n",
					  lineno + 1, filename);
			}
			else {
				/* it's a #line directive for code we didn't write */
				in_gen = false;
			}

			FUNC8 (fname);
			last_was_blank = false;
		}

		/* squeeze blank lines from generated code */
		else if (in_gen
			 && FUNC10 (&regex_blank_line, buf, 0, NULL,
				     0) == 0) {
			if (last_was_blank)
				continue;
			else
				last_was_blank = true;
		}

		else {
			/* it's a line of normal, non-empty code. */
			last_was_blank = false;
		}

		FUNC7 (buf, stdout);
		lineno++;
	}
	FUNC3 (stdout);
	if (FUNC2 (stdout))
		FUNC9 (FUNC0("error writing output file %s"),
			outfilename ? outfilename : "<stdout>");

	else if (FUNC1 (stdout))
		FUNC9 (FUNC0("error closing output file %s"),
			outfilename ? outfilename : "<stdout>");

	return 0;
}