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
struct symbol {int dummy; } ;
typedef  enum symbol_type { ____Placeholder_symbol_type } symbol_type ;

/* Variables and functions */
#define  S_HEX 132 
#define  S_INT 131 
#define  S_STRING 130 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int input_mode ; 
 char* line ; 
#define  oldaskconfig 129 
#define  oldconfig 128 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC4 (struct symbol*) ; 
 scalar_t__ FUNC5 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct symbol *sym, const char *def)
{
	enum symbol_type type = FUNC4(sym);

	if (!FUNC5(sym))
		FUNC3(FUNC0("(NEW) "));

	line[0] = '\n';
	line[1] = 0;

	if (!FUNC6(sym)) {
		FUNC3("%s\n", def);
		line[0] = '\n';
		line[1] = 0;
		return 0;
	}

	switch (input_mode) {
	case oldconfig:
		if (FUNC5(sym)) {
			FUNC3("%s\n", def);
			return 0;
		}
		FUNC1();
		/* fall through */
	case oldaskconfig:
		FUNC2(stdout);
		FUNC7(line, 128, stdin);
		return 1;
	default:
		break;
	}

	switch (type) {
	case S_INT:
	case S_HEX:
	case S_STRING:
		FUNC3("%s\n", def);
		return 1;
	default:
		;
	}
	FUNC3("%s", line);
	return 1;
}