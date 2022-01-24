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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* g_pname ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const char *fmt, va_list ap)
{
	int error = errno;

	(void) FUNC0(stderr, "%s: ", g_pname);
	(void) FUNC3(stderr, fmt, ap);

	if (fmt[FUNC2(fmt) - 1] != '\n')
		(void) FUNC0(stderr, ": %s\n", FUNC1(error));
}