#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ strchr ;
struct TYPE_2__ {scalar_t__ single_quoted; } ;

/* Variables and functions */
 char* FIX_DOUBLE ; 
 char* FIX_SINGLE ; 
 TYPE_1__ dialog_vars ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 () ; 

void
FUNC3(char *string)
{
    char temp[2];
    const char *my_quote = FUNC2();
    const char *must_fix = (dialog_vars.single_quoted
			    ? FIX_SINGLE
			    : FIX_DOUBLE);

    if (FUNC1(string)) {
	temp[1] = '\0';
	FUNC0(my_quote);
	while (*string != '\0') {
	    temp[0] = *string++;
	    if ((strchr) (my_quote, *temp) || (strchr) (must_fix, *temp))
		FUNC0("\\");
	    FUNC0(temp);
	}
	FUNC0(my_quote);
    } else {
	FUNC0(string);
    }
}