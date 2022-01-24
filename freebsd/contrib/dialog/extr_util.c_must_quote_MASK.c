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
 int FALSE ; 
 char* FIX_DOUBLE ; 
 int TRUE ; 
 char* FUNC0 () ; 
 size_t FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static bool
FUNC3(char *string)
{
    bool code = FALSE;

    if (*string != '\0') {
	size_t len = FUNC2(string);
	if (FUNC1(string, FUNC0()) != len)
	    code = TRUE;
	else if (FUNC1(string, "\n\t ") != len)
	    code = TRUE;
	else
	    code = (FUNC1(string, FIX_DOUBLE) != len);
    } else {
	code = TRUE;
    }

    return code;
}