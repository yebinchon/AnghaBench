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
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/ * ttyinf ; 

int
FUNC2(char *str, int len)
{
	char *pt;

	if ((--len <= 0) || (ttyinf == NULL) || (FUNC0(str,len,ttyinf) == NULL))
		return(-1);
	*(str + len) = '\0';

	/*
	 * strip off that trailing newline
	 */
	if ((pt = FUNC1(str, '\n')) != NULL)
		*pt = '\0';
	return(0);
}