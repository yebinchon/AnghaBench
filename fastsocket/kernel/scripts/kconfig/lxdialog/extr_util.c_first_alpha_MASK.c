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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,int) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const) ; 

int FUNC4(const char *string, const char *exempt)
{
	int i, in_paren = 0, c;

	for (i = 0; i < FUNC2(string); i++) {
		c = FUNC3(string[i]);

		if (FUNC1("<[(", c))
			++in_paren;
		if (FUNC1(">])", c) && in_paren > 0)
			--in_paren;

		if ((!in_paren) && FUNC0(c) && FUNC1(exempt, c) == 0)
			return i;
	}

	return 0;
}