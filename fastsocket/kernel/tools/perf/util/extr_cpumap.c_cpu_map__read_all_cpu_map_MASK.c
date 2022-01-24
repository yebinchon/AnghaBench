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
struct cpu_map {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct cpu_map* FUNC0 () ; 
 struct cpu_map* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 

__attribute__((used)) static struct cpu_map *FUNC4(void)
{
	struct cpu_map *cpus = NULL;
	FILE *onlnf;

	onlnf = FUNC3("/sys/devices/system/cpu/online", "r");
	if (!onlnf)
		return FUNC0();

	cpus = FUNC1(onlnf);
	FUNC2(onlnf);
	return cpus;
}