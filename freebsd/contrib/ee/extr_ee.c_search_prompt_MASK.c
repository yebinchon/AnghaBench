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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gold ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  search_prompt_str ; 
 char* srch_1 ; 
 char* srch_3 ; 
 char* srch_str ; 
 scalar_t__ FUNC4 (char*) ; 
 char FUNC5 (char) ; 
 char* u_srch_str ; 

void 
FUNC6()		/* prompt and read search string (srch_str)	*/
{
	if (srch_str != NULL)
		FUNC0(srch_str);
	if ((u_srch_str != NULL) && (*u_srch_str != '\0'))
		FUNC0(u_srch_str);
	srch_str = FUNC1(search_prompt_str, FALSE);
	gold = FALSE;
	srch_3 = srch_str;
	srch_1 = u_srch_str = FUNC2(FUNC4(srch_str) + 1);
	while (*srch_3 != '\0')
	{
		*srch_1 = FUNC5(*srch_3);
		srch_1++;
		srch_3++;
	}
	*srch_1 = '\0';
	FUNC3(TRUE);
}