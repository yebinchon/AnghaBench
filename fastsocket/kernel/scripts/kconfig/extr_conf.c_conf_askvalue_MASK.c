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
#define  S_HEX 133 
#define  S_INT 132 
#define  S_STRING 131 
 char* FUNC0 (char*) ; 
#define  ask_all 130 
#define  ask_new 129 
#define  ask_silent 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int input_mode ; 
 char* line ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC5 (struct symbol*) ; 
 scalar_t__ FUNC6 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC7 (struct symbol*) ; 

__attribute__((used)) static int FUNC8(struct symbol *sym, const char *def)
{
	enum symbol_type type = FUNC5(sym);

	if (!FUNC6(sym))
		FUNC4(FUNC0("(NEW) "));

	line[0] = '\n';
	line[1] = 0;

	if (!FUNC7(sym)) {
		FUNC4("%s\n", def);
		line[0] = '\n';
		line[1] = 0;
		return 0;
	}

	switch (input_mode) {
	case ask_new:
	case ask_silent:
		if (FUNC6(sym)) {
			FUNC4("%s\n", def);
			return 0;
		}
		FUNC1();
	case ask_all:
		FUNC2(stdout);
		FUNC3(line, 128, stdin);
		return 1;
	default:
		break;
	}

	switch (type) {
	case S_INT:
	case S_HEX:
	case S_STRING:
		FUNC4("%s\n", def);
		return 1;
	default:
		;
	}
	FUNC4("%s", line);
	return 1;
}