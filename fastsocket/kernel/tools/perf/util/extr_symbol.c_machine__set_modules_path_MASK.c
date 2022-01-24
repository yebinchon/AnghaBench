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
struct machine {char* root_dir; int /*<<< orphan*/  kmaps; } ;
typedef  int /*<<< orphan*/  modules_path ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static int FUNC4(struct machine *machine)
{
	char *version;
	char modules_path[PATH_MAX];

	version = FUNC1(machine->root_dir);
	if (!version)
		return -1;

	FUNC3(modules_path, sizeof(modules_path), "%s/lib/modules/%s/kernel",
		 machine->root_dir, version);
	FUNC0(version);

	return FUNC2(&machine->kmaps, modules_path);
}