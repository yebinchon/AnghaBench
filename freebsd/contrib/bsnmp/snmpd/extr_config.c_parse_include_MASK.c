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
 char TOK_STR ; 
 int _POSIX2_LINE_MAX ; 
 char FUNC0 () ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  strval ; 
 char token ; 

__attribute__((used)) static void
FUNC4(void)
{
	int sysdir = 0;
	char fname[_POSIX2_LINE_MAX];

	if (FUNC0() == '<') {
		sysdir = 1;
		if (FUNC0() != TOK_STR)
			FUNC2("expecting filename after in .include");
	} else if (token != TOK_STR)
		FUNC2("expecting filename after in .include");

	FUNC3(fname, strval);
	if (sysdir && FUNC0() != '>')
		FUNC2("expecting '>'");
	FUNC0();
	if (FUNC1(fname, sysdir) == -1)
		FUNC2("%s: %m", fname);
}