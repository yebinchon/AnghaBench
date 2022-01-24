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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC3(const char *fmt, va_list adx)
{
	char buf[512];
	(void) FUNC2(buf, 512, fmt, adx);
	FUNC1(buf, NULL, 0);
	FUNC0(); /* necessary to make vpanic meet noreturn requirements */
}