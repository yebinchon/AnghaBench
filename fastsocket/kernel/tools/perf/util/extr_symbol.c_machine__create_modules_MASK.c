#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct map {int /*<<< orphan*/  dso; } ;
struct machine {char* root_dir; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {char* default_guest_modules; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct machine*) ; 
 struct map* FUNC8 (struct machine*,int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct machine*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*) ; 
 char* FUNC12 (char*,char) ; 
 char* FUNC13 (char*,char) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static int FUNC15(struct machine *machine)
{
	char *line = NULL;
	size_t n;
	FILE *file;
	struct map *map;
	const char *modules;
	char path[PATH_MAX];

	if (FUNC7(machine))
		modules = symbol_conf.default_guest_modules;
	else {
		FUNC11(path, "%s/proc/modules", machine->root_dir);
		modules = path;
	}

	if (FUNC14(path, "/proc/modules"))
		return -1;

	file = FUNC3(modules, "r");
	if (file == NULL)
		return -1;

	while (!FUNC2(file)) {
		char name[PATH_MAX];
		u64 start;
		char *sep;
		int line_len;

		line_len = FUNC5(&line, &n, file);
		if (line_len < 0)
			break;

		if (!line)
			goto out_failure;

		line[--line_len] = '\0'; /* \n */

		sep = FUNC13(line, 'x');
		if (sep == NULL)
			continue;

		FUNC6(sep + 1, &start);

		sep = FUNC12(line, ' ');
		if (sep == NULL)
			continue;

		*sep = '\0';

		FUNC10(name, sizeof(name), "[%s]", line);
		map = FUNC8(machine, start, name);
		if (map == NULL)
			goto out_delete_line;
		FUNC0(map->dso, machine->root_dir);
	}

	FUNC4(line);
	FUNC1(file);

	return FUNC9(machine);

out_delete_line:
	FUNC4(line);
out_failure:
	return -1;
}