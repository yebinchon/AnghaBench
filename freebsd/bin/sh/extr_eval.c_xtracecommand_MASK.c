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
struct arglist {int count; char** args; } ;

/* Variables and functions */
 int /*<<< orphan*/  errout ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  out2 ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int /*<<< orphan*/ ) ; 
 char const* FUNC6 () ; 
 char* FUNC7 (char const*,char) ; 

__attribute__((used)) static void
FUNC8(struct arglist *varlist, int argc, char **argv)
{
	char sep = 0;
	const char *text, *p, *ps4;
	int i;

	ps4 = FUNC0(FUNC6());
	FUNC4(ps4 != NULL ? ps4 : FUNC6());
	for (i = 0; i < varlist->count; i++) {
		text = varlist->args[i];
		if (sep != 0)
			FUNC2(' ');
		p = FUNC7(text, '=');
		if (p != NULL) {
			p++;
			FUNC5(text, p - text, out2);
			FUNC3(p);
		} else
			FUNC3(text);
		sep = ' ';
	}
	for (i = 0; i < argc; i++) {
		text = argv[i];
		if (sep != 0)
			FUNC2(' ');
		FUNC3(text);
		sep = ' ';
	}
	FUNC2('\n');
	FUNC1(&errout);
}