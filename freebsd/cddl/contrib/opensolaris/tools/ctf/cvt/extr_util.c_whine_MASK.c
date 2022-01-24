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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const char *type, const char *format, va_list ap)
{
	int error = errno;

	FUNC0(stderr, "%s: %s: ", type, progname);
	FUNC3(stderr, format, ap);

	if (format[FUNC2(format) - 1] != '\n')
		FUNC0(stderr, ": %s\n", FUNC1(error));
}