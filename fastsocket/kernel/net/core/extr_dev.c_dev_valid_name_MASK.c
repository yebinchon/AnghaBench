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
 scalar_t__ IFNAMSIZ ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*) ; 

int FUNC3(const char *name)
{
	if (*name == '\0')
		return 0;
	if (FUNC2(name) >= IFNAMSIZ)
		return 0;
	if (!FUNC1(name, ".") || !FUNC1(name, ".."))
		return 0;

	while (*name) {
		if (*name == '/' || FUNC0(*name))
			return 0;
		name++;
	}
	return 1;
}