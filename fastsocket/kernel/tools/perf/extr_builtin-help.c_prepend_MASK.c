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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static const char *FUNC4(const char *prefix, const char *cmd)
{
	size_t pre_len = FUNC3(prefix);
	size_t cmd_len = FUNC3(cmd);
	char *p = FUNC0(pre_len + cmd_len + 1);
	FUNC1(p, prefix, pre_len);
	FUNC2(p + pre_len, cmd);
	return p;
}