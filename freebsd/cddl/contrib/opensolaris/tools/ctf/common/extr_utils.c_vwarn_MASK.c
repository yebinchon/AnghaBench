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
 char* pname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void
FUNC4(const char *format, va_list alist)
{
	int err = errno;

	if (pname != NULL)
		(void) FUNC0(stderr, "%s: ", pname);

	(void) FUNC3(stderr, format, alist);

	if (FUNC1(format, '\n') == NULL)
		(void) FUNC0(stderr, ": %s\n", FUNC2(err));
}