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
struct file {int /*<<< orphan*/  f_path; } ;
struct core_name {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_TEMPORARY ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int FUNC1 (char*) ; 
 int FUNC2 (struct core_name*,char*,...) ; 
 TYPE_1__* current ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 struct file* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct core_name *cn)
{
	struct file *exe_file;
	char *pathbuf, *path, *p;
	int ret;

	exe_file = FUNC5(current->mm);
	if (!exe_file)
		return FUNC2(cn, "(unknown)");

	pathbuf = FUNC7(PATH_MAX, GFP_TEMPORARY);
	if (!pathbuf) {
		ret = -ENOMEM;
		goto put_exe_file;
	}

	path = FUNC3(&exe_file->f_path, pathbuf, PATH_MAX);
	if (FUNC0(path)) {
		ret = FUNC1(path);
		goto free_buf;
	}

	for (p = path; *p; p++)
		if (*p == '/')
			*p = '!';

	ret = FUNC2(cn, "%s", path);

free_buf:
	FUNC6(pathbuf);
put_exe_file:
	FUNC4(exe_file);
	return ret;
}