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
struct gstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* dialog_input_result ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct symbol**) ; 
 struct gstr FUNC4 (struct symbol**) ; 
 int /*<<< orphan*/  search_help ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gstr*) ; 
 int /*<<< orphan*/  FUNC8 (struct gstr*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 struct symbol** FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
	struct symbol **sym_arr;
	struct gstr res;
	char *dialog_input;
	int dres;
again:
	FUNC1();
	dres = FUNC2(FUNC0("Search Configuration Parameter"),
			      FUNC0("Enter CONFIG_ (sub)string to search for "
				"(with or without \"CONFIG\")"),
			      10, 75, "");
	switch (dres) {
	case 0:
		break;
	case 1:
		FUNC5(FUNC0("Search Configuration"), search_help);
		goto again;
	default:
		return;
	}

	/* strip CONFIG_ if necessary */
	dialog_input = dialog_input_result;
	if (FUNC9(dialog_input_result, "CONFIG_", 7) == 0)
		dialog_input += 7;

	sym_arr = FUNC10(dialog_input);
	res = FUNC4(sym_arr);
	FUNC3(sym_arr);
	FUNC6(FUNC0("Search Results"), FUNC8(&res), 0, 0);
	FUNC7(&res);
}