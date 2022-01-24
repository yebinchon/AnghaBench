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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int csize ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int* ecgroup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ trace ; 

void FUNC10 ()
{
	int i, j;
	int     numrows;

	FUNC7 (FUNC5 (), "yy_ec", csize);

	for (i = 1; i < csize; ++i) {
		ecgroup[i] = FUNC0 (ecgroup[i]);
		FUNC6 (ecgroup[i]);
	}

	FUNC2 ();

	if (trace) {
		FUNC4 (FUNC1("\n\nEquivalence Classes:\n\n"), stderr);

		numrows = csize / 8;

		for (j = 0; j < numrows; ++j) {
			for (i = j; i < csize; i = i + numrows) {
				FUNC3 (stderr, "%4s = %-2d",
					 FUNC9 (i), ecgroup[i]);

				FUNC8 (' ', stderr);
			}

			FUNC8 ('\n', stderr);
		}
	}
}