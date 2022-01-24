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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char const*) ; 

__attribute__((used)) static void FUNC1(int *target, const char *msg)
{
	int tmp = 0;

	FUNC0(&tmp, msg);
	if (tmp >= 0 && tmp <= 100)
		*target = tmp;
}