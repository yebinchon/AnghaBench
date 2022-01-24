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
 int FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const char *name, const char *value, int *is_bool)
{
	*is_bool = 1;
	if (!value)
		return 1;
	if (!*value)
		return 0;
	if (!FUNC1(value, "true") || !FUNC1(value, "yes") || !FUNC1(value, "on"))
		return 1;
	if (!FUNC1(value, "false") || !FUNC1(value, "no") || !FUNC1(value, "off"))
		return 0;
	*is_bool = 0;
	return FUNC0(name, value);
}