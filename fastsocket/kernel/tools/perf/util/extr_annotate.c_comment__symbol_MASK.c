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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int FUNC4(char *raw, char *comment, u64 *addrp, char **namep)
{
	char *endptr, *name, *t;

	if (FUNC2(raw, "(%rip)") == NULL)
		return 0;

	*addrp = FUNC3(comment, &endptr, 16);
	name = FUNC0(endptr, '<');
	if (name == NULL)
		return -1;

	name++;

	t = FUNC0(name, '>');
	if (t == NULL)
		return 0;

	*t = '\0';
	*namep = FUNC1(name);
	*t = '>';

	return 0;
}