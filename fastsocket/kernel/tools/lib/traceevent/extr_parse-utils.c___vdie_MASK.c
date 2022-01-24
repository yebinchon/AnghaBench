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

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(const char *fmt, va_list ap)
{
	int ret = errno;

	if (errno)
		FUNC2("trace-cmd");
	else
		ret = -1;

	FUNC1(stderr, "  ");
	FUNC3(stderr, fmt, ap);

	FUNC1(stderr, "\n");
	FUNC0(ret);
}