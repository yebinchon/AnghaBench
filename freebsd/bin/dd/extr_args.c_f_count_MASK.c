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
typedef  scalar_t__ uintmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ UINTMAX_MAX ; 
 scalar_t__ cpy_cnt ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  oper ; 

__attribute__((used)) static void
FUNC2(char *arg)
{
	uintmax_t res;

	res = FUNC1(arg);
	if (res == UINTMAX_MAX)
		FUNC0(1, ERANGE, "%s", oper);
	if (res == 0)
		cpy_cnt = UINTMAX_MAX;
	else
		cpy_cnt = res;
}