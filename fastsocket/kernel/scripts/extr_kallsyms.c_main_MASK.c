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
 int all_symbols ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 char symbol_prefix_char ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(int argc, char **argv)
{
	if (argc >= 2) {
		int i;
		for (i = 1; i < argc; i++) {
			if(FUNC3(argv[i], "--all-symbols") == 0)
				all_symbols = 1;
			else if (FUNC4(argv[i], "--symbol-prefix=", 16) == 0) {
				char *p = &argv[i][16];
				/* skip quote */
				if ((*p == '"' && *(p+2) == '"') || (*p == '\'' && *(p+2) == '\''))
					p++;
				symbol_prefix_char = *p;
			} else
				FUNC5();
		}
	} else if (argc != 1)
		FUNC5();

	FUNC1(stdin);
	FUNC2();
	FUNC0();
	FUNC6();

	return 0;
}