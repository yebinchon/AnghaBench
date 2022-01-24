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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ascii_code_str ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ horiz_offset ; 
 int in ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ last_line ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_menu ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ scr_horz ; 
 int /*<<< orphan*/  scr_vert ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  text_win ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void 
FUNC28()
{
	char *string;

	if (in == 1)		/* control a	*/
		FUNC2();
	else if (in == 2)	/* control b	*/
		FUNC15(TRUE);
	else if (in == 3)	/* control c	*/
	{
		FUNC4();
	}
	else if (in == 4)	/* control d	*/
		FUNC5();
	else if (in == 5)	/* control e	*/
		FUNC10();
	else if (in == 6)	/* control f	*/
		FUNC19(TRUE);
	else if (in == 7)	/* control g	*/
		FUNC18('u', FUNC16(5, (last_line - 5)));
	else if (in == 8)	/* control h	*/
		FUNC8(TRUE);
	else if (in == 9)	/* control i	*/
		;
	else if (in == 10)	/* control j	*/
		FUNC23();
	else if (in == 11)	/* control k	*/
		FUNC6();
	else if (in == 12)	/* control l	*/
		FUNC24();
	else if (in == 13)	/* control m	*/
		FUNC14(TRUE);
	else if (in == 14)	/* control n	*/
		FUNC9();
	else if (in == 15)	/* control o	*/
	{
		string = FUNC12(ascii_code_str, TRUE);
		if (*string != '\0')
		{
			in = FUNC1(string);
			FUNC27(text_win, scr_vert, (scr_horz - horiz_offset));
			FUNC13(in);
		}
		FUNC11(string);
	}
	else if (in == 16)	/* control p	*/
		FUNC26();
	else if (in == 17)	/* control q	*/
		;
	else if (in == 18)	/* control r	*/
		FUNC25();
	else if (in == 19)	/* control s	*/
		;
	else if (in == 20)	/* control t	*/
		FUNC22();
	else if (in == 21)	/* control u	*/
		FUNC3();
	else if (in == 22)	/* control v	*/
		FUNC18('d', FUNC16(5, (last_line - 5)));
	else if (in == 23)	/* control w	*/
		FUNC7();
	else if (in == 24)	/* control x	*/
		FUNC20(TRUE);
	else if (in == 25)	/* control y	*/
		FUNC21();
	else if (in == 26)	/* control z	*/
		FUNC0();
	else if (in == 27)	/* control [ (escape)	*/
	{
		FUNC17(main_menu);
	}	
}