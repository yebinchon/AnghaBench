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
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  dt_version_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,scalar_t__,scalar_t__,...) ; 

char *
FUNC4(dt_version_t v, char *buf, size_t len)
{
	uint_t M = FUNC0(v);
	uint_t m = FUNC2(v);
	uint_t u = FUNC1(v);

	if (u == 0)
		(void) FUNC3(buf, len, "%u.%u", M, m);
	else
		(void) FUNC3(buf, len, "%u.%u.%u", M, m, u);

	return (buf);
}