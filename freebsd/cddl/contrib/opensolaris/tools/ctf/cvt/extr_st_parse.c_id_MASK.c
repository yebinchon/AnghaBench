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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (char*,int*) ; 

__attribute__((used)) static char *
FUNC4(char *cp, int *h)
{
	int n1, n2;

	if (*cp == '(') {	/* SunPro style */
		cp++;
		cp = FUNC3(cp, &n1);
		if (*cp++ != ',')
			FUNC1("id", ",", cp - 1);
		cp = FUNC3(cp, &n2);
		if (*cp++ != ')')
			FUNC1("id", ")", cp - 1);
		*h = FUNC0(n1, n2);
	} else if (FUNC2(*cp)) { /* gcc style */
		cp = FUNC3(cp, &n1);
		*h = n1;
	} else {
		FUNC1("id", "(/0-9", cp);
	}
	return (cp);
}