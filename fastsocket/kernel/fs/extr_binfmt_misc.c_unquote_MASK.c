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
 char FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(char *from)
{
	char c = 0, *s = from, *p = from;

	while ((c = *s++) != '\0') {
		if (c == '\\' && *s == 'x') {
			s++;
			c = FUNC1(*s++);
			*p = (c - (FUNC0(c) ? '0' : 'A' - 10)) << 4;
			c = FUNC1(*s++);
			*p++ |= c - (FUNC0(c) ? '0' : 'A' - 10);
			continue;
		}
		*p++ = c;
	}
	return p - from;
}