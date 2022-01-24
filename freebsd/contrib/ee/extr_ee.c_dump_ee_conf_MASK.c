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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* AUTOFORMAT ; 
 char* CASE ; 
 char* EIGHTBIT ; 
 char* EMACS_string ; 
 char* EXPAND ; 
 int /*<<< orphan*/  Echo ; 
 int /*<<< orphan*/  FALSE ; 
 char* HIGHLIGHT ; 
 char* INFO ; 
 char* MARGINS ; 
 char* NOAUTOFORMAT ; 
 char* NOCASE ; 
 char* NOEIGHTBIT ; 
 char* NOEMACS_string ; 
 char* NOEXPAND ; 
 char* NOHIGHLIGHT ; 
 char* NOINFO ; 
 char* NOMARGINS ; 
 char* PRINTCOMMAND ; 
 char* RIGHTMARGIN ; 
 scalar_t__ auto_format ; 
 scalar_t__ case_sen ; 
 char* chinese_cmd ; 
 int /*<<< orphan*/  com_win ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conf_dump_err_msg ; 
 int /*<<< orphan*/  conf_dump_success_msg ; 
 int /*<<< orphan*/  conf_not_saved_msg ; 
 int /*<<< orphan*/  config_dump_menu ; 
 scalar_t__ ee_chinese ; 
 scalar_t__ eightbit ; 
 scalar_t__ emacs_keys_mode ; 
 scalar_t__ expand_tabs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ info_window ; 
 int /*<<< orphan*/  init_strings ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 char* nochinese_cmd ; 
 scalar_t__ nohighlight ; 
 scalar_t__ observ_margins ; 
 char* print_command ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 () ; 
 int right_margin ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 
 int FUNC11 (char*,struct stat*) ; 
 int FUNC12 (char*) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void 
FUNC19()	
{
	FILE *init_file;
	FILE *old_init_file = NULL;
	char *file_name = ".init.ee";
	char *home_dir =  "~/.init.ee";
	char buffer[512];
	struct stat buf;
	char *string;
	int length;
	int option = 0;

	if (FUNC9())
	{
		return;
	}

	option = FUNC7(config_dump_menu);

	FUNC15(com_win);
	FUNC16(com_win, 0, 0);

	if (option == 0)
	{
		FUNC17(com_win, conf_not_saved_msg);
		FUNC18(com_win);
		return;
	}
	else if (option == 2)
		file_name = FUNC8(home_dir);

	/*
	 |	If a .init.ee file exists, move it to .init.ee.old.
	 */

	if (FUNC11(file_name, &buf) != -1)
	{
		FUNC10(buffer, "%s.old", file_name);
		FUNC14(buffer);
		FUNC6(file_name, buffer);
		FUNC14(file_name);
		old_init_file = FUNC3(buffer, "r");
	}

	init_file = FUNC3(file_name, "w");
	if (init_file == NULL)
	{
		FUNC17(com_win, conf_dump_err_msg);
		FUNC18(com_win);
		return;
	}

	if (old_init_file != NULL)
	{
		/*
		 |	Copy non-configuration info into new .init.ee file.
		 */
		while ((string = FUNC2(buffer, 512, old_init_file)) != NULL)
		{
			length = FUNC12(string);
			string[length - 1] = '\0';

			if (FUNC13(string, init_strings) == 1)
			{
				if (FUNC0(string, Echo, FALSE))
				{
					FUNC4(init_file, "%s\n", string);
				}
			}
			else
				FUNC4(init_file, "%s\n", string);
		}

		FUNC1(old_init_file);
	}

	FUNC4(init_file, "%s\n", case_sen ? CASE : NOCASE);
	FUNC4(init_file, "%s\n", expand_tabs ? EXPAND : NOEXPAND);
	FUNC4(init_file, "%s\n", info_window ? INFO : NOINFO );
	FUNC4(init_file, "%s\n", observ_margins ? MARGINS : NOMARGINS );
	FUNC4(init_file, "%s\n", auto_format ? AUTOFORMAT : NOAUTOFORMAT );
	FUNC4(init_file, "%s %s\n", PRINTCOMMAND, print_command);
	FUNC4(init_file, "%s %d\n", RIGHTMARGIN, right_margin);
	FUNC4(init_file, "%s\n", nohighlight ? NOHIGHLIGHT : HIGHLIGHT );
	FUNC4(init_file, "%s\n", eightbit ? EIGHTBIT : NOEIGHTBIT );
	FUNC4(init_file, "%s\n", emacs_keys_mode ? EMACS_string : NOEMACS_string );
	FUNC4(init_file, "%s\n", ee_chinese ? chinese_cmd : nochinese_cmd );

	FUNC1(init_file);

	FUNC17(com_win, conf_dump_success_msg, file_name);
	FUNC18(com_win);

	if ((option == 2) && (file_name != home_dir))
	{
		FUNC5(file_name);
	}
}