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
 scalar_t__ FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 
 int FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC3(const char *name, int len)
{
	static const char * const color_names[] = {
		"normal", "black", "red", "green", "yellow",
		"blue", "magenta", "cyan", "white"
	};
	char *end;
	int i;

	for (i = 0; i < (int)FUNC0(color_names); i++) {
		const char *str = color_names[i];
		if (!FUNC1(name, str, len) && !str[len])
			return i - 1;
	}
	i = FUNC2(name, &end, 10);
	if (end - name == len && i >= -1 && i <= 255)
		return i;
	return -2;
}