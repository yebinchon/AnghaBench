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
typedef  scalar_t__ intmax_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 

__attribute__((used)) static int
FUNC1 (const char *s1, const char *s2)
{
	intmax_t q1, q2;


	q1 = FUNC0(s1);
	q2 = FUNC0(s2);

	if (q1 > q2)
		return 1;

	if (q1 < q2)
		return -1;

	return 0;
}