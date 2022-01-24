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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  clear_com_win ; 
 int /*<<< orphan*/  com_win ; 
 int /*<<< orphan*/  file_not_saved_msg ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* in_file_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  save_file_name_prompt ; 
 int /*<<< orphan*/  text_changes ; 
 char* tmp_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,int) ; 

void 
FUNC9()	/* prepare to exit edit session	*/
{
	char *file_name = in_file_name;

	/*
	 |	changes made here should be reflected in the 'save' 
	 |	portion of file_op()
	 */

	if ((file_name == NULL) || (*file_name == '\0'))
		file_name = FUNC1(save_file_name_prompt, TRUE);

	if ((file_name == NULL) || (*file_name == '\0'))
	{
		FUNC5(com_win, 0, 0);
		FUNC6(com_win, file_not_saved_msg);
		FUNC4(com_win);
		FUNC7(com_win);
		clear_com_win = TRUE;
		return;
	}

	tmp_file = FUNC3(file_name);
	if (tmp_file != file_name)
	{
		FUNC0(file_name);
		file_name = tmp_file;
	}

	if (FUNC8(file_name, 1))
	{
		text_changes = FALSE;
		FUNC2(0);
	}
}