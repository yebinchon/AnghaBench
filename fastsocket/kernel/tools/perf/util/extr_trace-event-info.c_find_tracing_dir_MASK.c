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
 char* FUNC0 () ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static const char *FUNC4(void)
{
	static char *tracing;
	static int tracing_found;
	const char *debugfs;

	if (tracing_found)
		return tracing;

	debugfs = FUNC0();

	tracing = FUNC1(FUNC3(debugfs) + 9);

	FUNC2(tracing, "%s/tracing", debugfs);

	tracing_found = 1;
	return tracing;
}