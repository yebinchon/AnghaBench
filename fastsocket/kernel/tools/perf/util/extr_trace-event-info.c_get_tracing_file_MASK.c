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
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(const char *name)
{
	const char *tracing;
	char *file;

	tracing = FUNC0();
	if (!tracing)
		return NULL;

	file = FUNC1(FUNC3(tracing) + FUNC3(name) + 2);

	FUNC2(file, "%s/%s", tracing, name);
	return file;
}