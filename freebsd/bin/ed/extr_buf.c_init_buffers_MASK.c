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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  buffer_head ; 
 int* ctab ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdinbuf ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC5(void)
{
	int i = 0;

	/* Read stdin one character at a time to avoid i/o contention
	   with shell escapes invoked by nonterminal input, e.g.,
	   ed - <<EOF
	   !cat
	   hello, world
	   EOF */
	FUNC3(stdin, stdinbuf, 1);

	/* Ensure stdout is line buffered. This avoids bogus delays
	   of output if stdout is piped through utilities to a terminal. */
	FUNC4(stdout, NULL, _IOLBF, 0);
	if (FUNC1() < 0)
		FUNC2(2);
	FUNC0(&buffer_head, &buffer_head);
	for (i = 0; i < 256; i++)
		ctab[i] = i;
}