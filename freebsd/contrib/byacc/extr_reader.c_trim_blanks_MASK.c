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
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(char *buffer)
{
    if (*buffer != '\0')
    {
	char *d = buffer;
	char *s = FUNC1(d);

	while ((*d++ = *s++) != '\0')
	{
	    ;
	}

	--d;
	while ((--d != buffer) && FUNC2(FUNC0(*d)))
	    *d = '\0';

	for (s = d = buffer; (*d++ = *s++) != '\0';)
	{
	    if (FUNC2(FUNC0(*s)))
	    {
		*s = ' ';
		while (FUNC2(FUNC0(*s)))
		{
		    *s++ = ' ';
		}
		--s;
	    }
	}
    }

    return (int)FUNC3(buffer) - 1;
}