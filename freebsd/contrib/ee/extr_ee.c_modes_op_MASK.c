#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  item_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_NC_BIG5 ; 
 int FALSE ; 
 char* OFF ; 
 char* ON ; 
 void* TRUE ; 
 int FUNC0 (char*) ; 
 int auto_format ; 
 int case_sen ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ee_chinese ; 
 int eightbit ; 
 int emacs_keys_mode ; 
 int expand_tabs ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ info_window ; 
 int /*<<< orphan*/  margin_prompt ; 
 int FUNC4 (TYPE_1__*) ; 
 char** mode_strings ; 
 TYPE_1__* modes_menu ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int observ_margins ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int right_margin ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  text_win ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void 
FUNC12()
{
	int ret_value;
	int counter;
	char *string;

	do
	{
		FUNC10(modes_menu[1].item_string, "%s %s", mode_strings[1], 
					(expand_tabs ? ON : OFF));
		FUNC10(modes_menu[2].item_string, "%s %s", mode_strings[2], 
					(case_sen ? ON : OFF));
		FUNC10(modes_menu[3].item_string, "%s %s", mode_strings[3], 
					(observ_margins ? ON : OFF));
		FUNC10(modes_menu[4].item_string, "%s %s", mode_strings[4], 
					(auto_format ? ON : OFF));
		FUNC10(modes_menu[5].item_string, "%s %s", mode_strings[5], 
					(eightbit ? ON : OFF));
		FUNC10(modes_menu[6].item_string, "%s %s", mode_strings[6], 
					(info_window ? ON : OFF));
		FUNC10(modes_menu[7].item_string, "%s %s", mode_strings[7], 
					(emacs_keys_mode ? ON : OFF));
		FUNC10(modes_menu[8].item_string, "%s %d", mode_strings[8], 
					right_margin);
		FUNC10(modes_menu[9].item_string, "%s %s", mode_strings[9], 
					(ee_chinese ? ON : OFF));

		ret_value = FUNC4(modes_menu);

		switch (ret_value) 
		{
			case 1:
				expand_tabs = !expand_tabs;
				break;
			case 2:
				case_sen = !case_sen;
				break;
			case 3:
				observ_margins = !observ_margins;
				break;
			case 4:
				auto_format = !auto_format;
				if (auto_format)
					observ_margins = TRUE;
				break;
			case 5:
				eightbit = !eightbit;
				if (!eightbit)
					ee_chinese = FALSE;
#ifdef NCURSE
				if (ee_chinese)
					nc_setattrib(A_NC_BIG5);
				else
					nc_clearattrib(A_NC_BIG5);
#endif /* NCURSE */

				FUNC9();
				FUNC11(text_win);
				break;
			case 6:
				if (info_window)
					FUNC7();
				else
					FUNC1();
				break;
			case 7:
				emacs_keys_mode = !emacs_keys_mode;
				if (info_window)
					FUNC8();
				break;
			case 8:
				string = FUNC3(margin_prompt, TRUE);
				if (string != NULL)
				{
					counter = FUNC0(string);
					if (counter > 0)
						right_margin = counter;
					FUNC2(string);
				}
				break;
			case 9:
				ee_chinese = !ee_chinese;
				if (ee_chinese != FALSE)
					eightbit = TRUE;
#ifdef NCURSE
				if (ee_chinese)
					nc_setattrib(A_NC_BIG5);
				else
					nc_clearattrib(A_NC_BIG5);
#endif /* NCURSE */
				FUNC9();
				break;
			default:
				break;
		}
	}
	while (ret_value != 0);
}