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
 int /*<<< orphan*/  FUNC0 () ; 
 int kmemleak_skip_disable ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(char *str)
{
	if (!str)
		return -EINVAL;
	if (FUNC1(str, "off") == 0)
		FUNC0();
	else if (FUNC1(str, "on") == 0)
		kmemleak_skip_disable = 1;
	else
		return -EINVAL;
	return 0;
}