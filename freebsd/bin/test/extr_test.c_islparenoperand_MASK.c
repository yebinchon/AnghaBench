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
 scalar_t__ BINOP ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int nargc ; 
 int parenlevel ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char** t_wp ; 

__attribute__((used)) static int
FUNC3(void)
{
	char *s;
	int num;

	if (nargc == 1)
		return 1;
	s = *(t_wp + 1);
	if (nargc == 2)
		return parenlevel == 1 && FUNC2(s, ")") == 0;
	if (nargc != 3)
		return 0;
	num = FUNC1(s);
	return FUNC0(num) == BINOP;
}