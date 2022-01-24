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
struct machine {char* root_dir; } ;
struct dso {int has_build_id; int /*<<< orphan*/  build_id; } ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (struct machine*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct dso *dso, struct machine *machine)
{
	char path[PATH_MAX];

	if (FUNC0(machine))
		return;
	FUNC1(path, "%s/sys/kernel/notes", machine->root_dir);
	if (FUNC2(path, dso->build_id,
				 sizeof(dso->build_id)) == 0)
		dso->has_build_id = true;
}