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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char const* PERF_COLOR_RESET ; 
 scalar_t__ FUNC0 (char,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,size_t,int,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char,size_t) ; 

int FUNC4(FILE *fp, const char *color,
		size_t count, const char *buf)
{
	if (!*color)
		return FUNC2(buf, count, 1, fp) != 1;

	while (count) {
		char *p = FUNC3(buf, '\n', count);

		if (p != buf && (FUNC1(color, fp) < 0 ||
				FUNC2(buf, p ? (size_t)(p - buf) : count, 1, fp) != 1 ||
				FUNC1(PERF_COLOR_RESET, fp) < 0))
			return -1;
		if (!p)
			return 0;
		if (FUNC0('\n', fp) < 0)
			return -1;
		count -= p + 1 - buf;
		buf = p + 1;
	}
	return 0;
}