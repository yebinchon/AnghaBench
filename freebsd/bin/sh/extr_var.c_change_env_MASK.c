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
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(const char *s, int set)
{
	char *eqp;
	char *ss;

	INTOFF;
	ss = FUNC1(s);
	if ((eqp = FUNC3(ss, '=')) != NULL)
		*eqp = '\0';
	if (set && eqp != NULL)
		(void) FUNC2(ss, eqp + 1, 1);
	else
		(void) FUNC4(ss);
	FUNC0(ss);
	INTON;

	return;
}