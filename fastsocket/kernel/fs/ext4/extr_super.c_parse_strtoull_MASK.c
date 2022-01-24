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
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *buf,
		unsigned long long max, unsigned long long *value)
{
	int ret;

	ret = FUNC0(FUNC1(buf), 0, value);
	if (!ret && *value > max)
		ret = -EINVAL;
	return ret;
}