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
 scalar_t__ FUNC0 (int,int) ; 
 int csize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void    FUNC5 (FILE* file, int cclp)
{
	int i;

	FUNC3 ('[', file);

	for (i = 0; i < csize; ++i) {
		if (FUNC0(cclp, i)){
			int start_char = i;

			FUNC3 (' ', file);

			FUNC2 (FUNC4 (i), file);

			while (++i < csize && FUNC0(cclp,i)) ;

			if (i - 1 > start_char)
				/* this was a run */
				FUNC1 (file, "-%s",
					 FUNC4 (i - 1));

			FUNC3 (' ', file);
		}
	}

	FUNC3 (']', file);
}