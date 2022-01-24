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
 scalar_t__ FUNC1 (char) ; 

__attribute__((used)) static int
FUNC2(const char *s, const char *e, int allowdot)
{
	char c;

	if (s >= e)
		return (0);		/* name is empty */

	c = *s++;
	if (!FUNC0(c))
		return (0);		/* does not start with letter */

	while (s < e && (c = *s++) != 0) {
		if (FUNC0(c) || FUNC1(c) || c == '-' || c == '_' ||
		    (allowdot && c == '.'))
			continue;
		return (0);		/* invalid character */
	}
	return (1);
}