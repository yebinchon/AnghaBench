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
 char* __rstrtok ; 
 char* FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

char * FUNC2(char * s,const char * ct)
{
	char *sbegin, *send;

	sbegin  = s ? s : __rstrtok;
	if (!sbegin)
	{
		return NULL;
	}

	sbegin += FUNC1(sbegin,ct);
	if (*sbegin == '\0')
	{
		__rstrtok = NULL;
		return( NULL );
	}

	send = FUNC0( sbegin, ct);
	if (send && *send != '\0')
		*send++ = '\0';

	__rstrtok = send;

	return (sbegin);
}