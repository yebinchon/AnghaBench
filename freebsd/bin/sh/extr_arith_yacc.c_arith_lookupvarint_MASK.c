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
typedef  int /*<<< orphan*/  arith_t ;

/* Variables and functions */
 scalar_t__ errno ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char**) ; 
 scalar_t__ uflag ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static arith_t FUNC3(char *varname)
{
	const char *str;
	char *p;
	arith_t result;

	str = FUNC0(varname);
	if (uflag && str == NULL)
		FUNC2("variable not set");
	if (str == NULL || *str == '\0')
		str = "0";
	errno = 0;
	result = FUNC1(str, &p);
	if (errno != 0 || *p != '\0')
		FUNC2("variable conversion error");
	return result;
}