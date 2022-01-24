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
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,struct tm*) ; 

const char *
FUNC3(char *b, size_t l, time_t t)
{
	struct tm tm;
	if (FUNC0(&t, &tm) == NULL)
		FUNC1(b, l, "*%jd*", (intmax_t)t);
	else
		FUNC2(b, l, "%Y/%m/%d %H:%M:%S", &tm);
	return b;
}