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
 int /*<<< orphan*/ * Booleans ; 
 char* Data_Line ; 
 int Data_Line_len ; 
 int /*<<< orphan*/  Fildes ; 
 int Flip_Bytes ; 
 void* FUNC0 () ; 
 void** Numbers ; 
 int /*<<< orphan*/ ** String_table ; 
 int /*<<< orphan*/ * Strings ; 
 char* TERM_data_ptr ; 
 int TRUE ; 
 int bt__ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

int 
FUNC6()		/* parse off the data in the terminfo data file	*/
{
	int offset;
	int magic_number = 0;
	int counter = 0;
	int Num_names = 0;
	int Num_bools = 0;
	int Num_ints = 0;
	int Num_strings = 0;
	int string_table_len = 0;
	char *temp_ptr;

	TERM_data_ptr = Data_Line = FUNC3((10240 * (sizeof(char))));
	Data_Line_len = FUNC5(Fildes, Data_Line, 10240);
	if ((Data_Line_len >= 10240) || (Data_Line_len < 0))
		return(0);
	/*
	 |	get magic number
	 */
	magic_number = FUNC0();
	/*
	 |	if magic number not right, reverse byte order and check again
	 */
	if (magic_number != 282)
	{
		Flip_Bytes = TRUE;
		TERM_data_ptr--;
		TERM_data_ptr--;
		magic_number = FUNC0();
		if (magic_number != 282)
			return(0);
	}
	/*
	 |	get the number of each type in the terminfo data file
	 */
	Num_names = FUNC0();
	Num_bools = FUNC0();
	Num_ints = FUNC0();
	Num_strings = FUNC0();
	string_table_len = FUNC0();
	Strings = FUNC3(string_table_len);
	while (Num_names > 0)
	{
		TERM_data_ptr++;
		Num_names--;
	}
	counter = 0;
	while (Num_bools)
	{
		Num_bools--;
		Booleans[counter++] = *TERM_data_ptr++;
	}
	if ((unsigned long)TERM_data_ptr & 1)	/* force alignment	*/
		TERM_data_ptr++;
	counter = 0;
	while (Num_ints)
	{
		Num_ints--;
		Numbers[counter] = FUNC0();
		counter++;
	}
	temp_ptr = TERM_data_ptr + Num_strings + Num_strings;
	FUNC4(Strings, temp_ptr, string_table_len);
	counter = bt__;
	while (Num_strings)
	{
		Num_strings--;
		if ((offset=FUNC0()) != -1)
		{
			if (String_table[counter] == NULL)
				String_table[counter] = Strings + offset;
		}
		else
			String_table[counter] = NULL;
		counter++;
	}
	FUNC1(Fildes);
	FUNC2(Data_Line);
	return(TRUE);
}