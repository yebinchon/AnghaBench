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
 char* FUNC0 (long,int /*<<< orphan*/ *) ; 
 long FUNC1 () ; 

char *
FUNC2(void)
{
	long oerr, nerr;

	oerr = 0;
	while ((nerr = FUNC1()) != 0)
		oerr = nerr;

	return (FUNC0(oerr, NULL));
}