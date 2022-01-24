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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 char const* FUNC1 (char*,char const*) ; 

__attribute__((used)) static const char *FUNC2(const char *perf_cmd)
{
	if (!perf_cmd)
		return "perf";
	else if (!FUNC0(perf_cmd, "perf"))
		return perf_cmd;
	else
		return FUNC1("perf-", perf_cmd);
}