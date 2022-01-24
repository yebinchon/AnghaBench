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
struct stat {int dummy; } ;
struct cpu_map {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 struct cpu_map* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 char* FUNC5 () ; 

__attribute__((used)) static struct cpu_map *FUNC6(char *name)
{
	struct stat st;
	char path[PATH_MAX];
	const char *sysfs;
	FILE *file;
	struct cpu_map *cpus;

	sysfs = FUNC5();
	if (!sysfs)
		return NULL;

	FUNC3(path, PATH_MAX,
		 "%s/bus/event_source/devices/%s/cpumask", sysfs, name);

	if (FUNC4(path, &st) < 0)
		return NULL;

	file = FUNC2(path, "r");
	if (!file)
		return NULL;

	cpus = FUNC0(file);
	FUNC1(file);
	return cpus;
}