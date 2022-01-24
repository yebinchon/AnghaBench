#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char** p; long nparam; } ;

/* Variables and functions */
 char* arg0 ; 
 int FUNC0 () ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char const) ; 
 TYPE_1__ shellparam ; 
 long FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(const char *name, int nulok)
{

	if (*name == '!')
		return FUNC0();
	else if (*name == '@' || *name == '*') {
		if (*shellparam.p == NULL)
			return 0;

		if (nulok) {
			char **av;

			for (av = shellparam.p; *av; av++)
				if (**av != '\0')
					return 1;
			return 0;
		}
	} else if (FUNC1(*name)) {
		char *ap;
		long num;

		errno = 0;
		num = FUNC2(name, NULL, 10);
		if (errno != 0 || num > shellparam.nparam)
			return 0;

		if (num == 0)
			ap = arg0;
		else
			ap = shellparam.p[num - 1];

		if (nulok && (ap == NULL || *ap == '\0'))
			return 0;
	}
	return 1;
}