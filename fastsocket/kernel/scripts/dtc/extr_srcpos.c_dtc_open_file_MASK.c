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
struct search_path {struct search_path* next; int /*<<< orphan*/  dir; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct dtc_file {char* dir; char* name; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dtc_file*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 char* FUNC7 (char const*,char) ; 
 void* FUNC8 (int) ; 

struct dtc_file *FUNC9(const char *fname,
                               const struct search_path *search)
{
	static const struct search_path default_search = { NULL, NULL, NULL };

	struct dtc_file *file;
	const char *slash;

	file = FUNC8(sizeof(struct dtc_file));

	slash = FUNC7(fname, '/');
	if (slash) {
		char *dir = FUNC8(slash - fname + 1);

		FUNC3(dir, fname, slash - fname);
		dir[slash - fname] = 0;
		file->dir = dir;
	} else {
		file->dir = NULL;
	}

	if (FUNC5(fname, "-")) {
		file->name = "stdin";
		file->file = stdin;
		return file;
	}

	if (fname[0] == '/') {
		file->file = FUNC2(fname, "r");
		if (!file->file)
			goto fail;

		file->name = FUNC4(fname);
		return file;
	}

	if (!search)
		search = &default_search;

	while (search) {
		if (FUNC1(file, search->dir, fname))
			return file;

		if (errno != ENOENT)
			goto fail;

		search = search->next;
	}

fail:
	FUNC0("Couldn't open \"%s\": %s\n", fname, FUNC6(errno));
}