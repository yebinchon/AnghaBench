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
 int /*<<< orphan*/  KENV_SET ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(const char *env, char *val)
{
	int ret;

	ret = FUNC0(KENV_SET, env, val, FUNC2(val) + 1);
	if (ret == 0)
		FUNC1("%s=\"%s\"\n", env, val);
	return (ret);
}