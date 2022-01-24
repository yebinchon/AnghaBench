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
typedef  int /*<<< orphan*/ * PSTRING ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

INT FUNC1(PSTRING s,PSTRING ct)
{
	INT count = 0;
	/* point to the beginning of the line */
	PSTRING token = s;

	for ( ;; )
	{
		token = FUNC0(token, ct); /* search for delimiters */

        if ( token == NULL )
		{
			/* advanced to the terminating null character */
			break;
		}
		/* skip the delimiter */
	    ++token;

		/*
		 * Print the found text: use len with %.*s to specify field width.
		 */

		/* accumulate delimiter count */
	    ++count;
	}
    return count;
}