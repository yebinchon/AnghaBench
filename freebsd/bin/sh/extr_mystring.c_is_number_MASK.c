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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

int
FUNC2(const char *p)
{
	const char *q;

	if (*p == '\0')
		return 0;
	while (*p == '0')
		p++;
	for (q = p; *q != '\0'; q++)
		if (! FUNC0(*q))
			return 0;
	if (q - p > 10 ||
	    (q - p == 10 && FUNC1(p, "2147483647", 10) > 0))
		return 0;
	return 1;
}