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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ascii_code_str ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ horiz_offset ; 
 int in ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ last_line ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_menu ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ scr_horz ; 
 int /*<<< orphan*/  scr_vert ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  text_win ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void 
FUNC27()			/* use control for commands		*/
{
	char *string;

	if (in == 1)		/* control a	*/
	{
		string = FUNC11(ascii_code_str, TRUE);
		if (*string != '\0')
		{
			in = FUNC0(string);
			FUNC26(text_win, scr_vert, (scr_horz - horiz_offset));
			FUNC12(in);
		}
		FUNC10(string);
	}
	else if (in == 2)	/* control b	*/
		FUNC2();
	else if (in == 3)	/* control c	*/
	{
		FUNC3();
	}
	else if (in == 4)	/* control d	*/
		FUNC8();
	else if (in == 5)	/* control e	*/
		FUNC20();
	else if (in == 6)	/* control f	*/
		FUNC22();
	else if (in == 7)	/* control g	*/
		FUNC1();
	else if (in == 8)	/* control h	*/
		FUNC7(TRUE);
	else if (in == 9)	/* control i	*/
		;
	else if (in == 10)	/* control j	*/
		FUNC13(TRUE);
	else if (in == 11)	/* control k	*/
		FUNC4();
	else if (in == 12)	/* control l	*/
		FUNC14(TRUE);
	else if (in == 13)	/* control m	*/
		FUNC13(TRUE);
	else if (in == 14)	/* control n	*/
		FUNC17('d', FUNC15(5, (last_line - 5)));
	else if (in == 15)	/* control o	*/
		FUNC9();
	else if (in == 16)	/* control p	*/
		FUNC17('u', FUNC15(5, (last_line - 5)));
	else if (in == 17)	/* control q	*/
		;
	else if (in == 18)	/* control r	*/
		FUNC18(TRUE);
	else if (in == 19)	/* control s	*/
		;
	else if (in == 20)	/* control t	*/
		FUNC21();
	else if (in == 21)	/* control u	*/
		FUNC25();
	else if (in == 22)	/* control v	*/
		FUNC24();
	else if (in == 23)	/* control w	*/
		FUNC6();
	else if (in == 24)	/* control x	*/
		FUNC19(TRUE);
	else if (in == 25)	/* control y	*/
		FUNC5();
	else if (in == 26)	/* control z	*/
		FUNC23();
	else if (in == 27)	/* control [ (escape)	*/
	{
		FUNC16(main_menu);
	}	
}