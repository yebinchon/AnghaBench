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
typedef  int /*<<< orphan*/  inc ;
typedef  size_t Boolean ;

/* Variables and functions */
 size_t FALSE ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char const) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t const) ; 

__attribute__((used)) static Boolean
FUNC3(const char *line, Boolean sysv)
{
	static const char inc[] = "include";
	static const size_t inclen = sizeof(inc) - 1;

	// 'd' is not valid for sysv
	int o = FUNC1(&("ds-"[sysv]), *line) != NULL;

	if (FUNC2(line + o, inc, inclen) != 0)
		return FALSE;

	// Space is not mandatory for BSD .include
	return !sysv || FUNC0((unsigned char)line[inclen + o]);
}