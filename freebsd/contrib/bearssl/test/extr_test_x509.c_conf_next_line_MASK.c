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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  conf_linenum ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  current_linenum ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  line_builder ; 

__attribute__((used)) static int
FUNC7(void)
{
	for (;;) {
		int c;
		int lcwb;

		FUNC3(line_builder);

		/*
		 * Get first non-whitespace character. This skips empty
		 * lines. Comment lines (first non-whitespace character
		 * is a semicolon) are also skipped.
		 */
		for (;;) {
			c = FUNC5();
			if (c < 0) {
				return -1;
			}
			if (FUNC6(c)) {
				continue;
			}
			if (c == ';') {
				for (;;) {
					c = FUNC5();
					if (c < 0) {
						return -1;
					}
					if (c == '\n') {
						break;
					}
				}
				continue;
			}
			break;
		}

		/*
		 * Read up the remaining of the line. The line continuation
		 * sequence (final backslash) is detected and processed.
		 */
		current_linenum = conf_linenum;
		lcwb = (c == '\\');
		FUNC0(line_builder, c);
		for (;;) {
			c = FUNC5();
			if (c < 0) {
				break;
			}
			if (lcwb) {
				if (c == '\n') {
					FUNC4(line_builder,
						FUNC2(line_builder) - 1);
				}
				lcwb = 0;
				continue;
			}
			if (c == '\n') {
				break;
			} else if (c == '\\') {
				lcwb = 1;
			}
			FUNC0(line_builder, c);
		}

		/*
		 * Remove trailing whitespace (if any).
		 */
		for (;;) {
			size_t u;

			u = FUNC2(line_builder);
			if (u == 0 || !FUNC6(
				FUNC1(line_builder)[u - 1]))
			{
				break;
			}
			FUNC4(line_builder, u - 1);
		}

		/*
		 * We might end up with a totally empty line (in case there
		 * was a line continuation but nothing else), in which case
		 * we must loop.
		 */
		if (FUNC2(line_builder) > 0) {
			return 0;
		}
	}
}