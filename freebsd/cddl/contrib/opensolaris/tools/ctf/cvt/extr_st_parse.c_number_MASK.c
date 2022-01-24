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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 scalar_t__ FUNC1 (char*,char**,int) ; 

__attribute__((used)) static char *
FUNC2(char *cp, int *n)
{
	char *next;

	*n = (int)FUNC1(cp, &next, 10);
	if (next == cp)
		FUNC0("number", "<number>", cp);
	return (next);
}