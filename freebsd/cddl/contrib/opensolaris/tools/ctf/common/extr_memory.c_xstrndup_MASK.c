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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

char *
FUNC3(char *str, size_t len)
{
	char *newstr;

	if ((newstr = FUNC0(len + 1)) == NULL)
		FUNC1();

	(void) FUNC2(newstr, str, len);
	newstr[len] = '\0';

	return (newstr);
}