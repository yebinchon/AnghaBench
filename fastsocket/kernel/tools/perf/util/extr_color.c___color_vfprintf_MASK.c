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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* PERF_COLOR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int perf_use_color_default ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(FILE *fp, const char *color, const char *fmt,
		va_list args, const char *trail)
{
	int r = 0;

	/*
	 * Auto-detect:
	 */
	if (perf_use_color_default < 0) {
		if (FUNC2(FUNC0(fp)) || FUNC3())
			perf_use_color_default = 1;
		else
			perf_use_color_default = 0;
	}

	if (perf_use_color_default && *color)
		r += FUNC1(fp, "%s", color);
	r += FUNC4(fp, fmt, args);
	if (perf_use_color_default && *color)
		r += FUNC1(fp, "%s", PERF_COLOR_RESET);
	if (trail)
		r += FUNC1(fp, "%s", trail);
	return r;
}