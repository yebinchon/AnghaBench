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
 scalar_t__ FUNC0 (char) ; 
 size_t FUNC1 (char*) ; 

char *FUNC2(char *s)
{
	size_t size = FUNC1(s);
	char *end;

	if (!size)
		return s;

	end = s + size - 1;
	while (end >= s && FUNC0(*end))
		end--;
	*(end + 1) = '\0';

	return s;
}