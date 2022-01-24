#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fileargs_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_4__ {int /*<<< orphan*/  def_filename; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fileargs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_MMAP_R ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FA_OPEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ nm_info ; 
 TYPE_1__ nm_opts ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(int argc, char **argv)
{
	cap_rights_t rights;
	fileargs_t *fa;
	char *defaultfn;

	FUNC0(&rights, CAP_FSTAT, CAP_MMAP_R);

	if (argc == 0) {
		defaultfn = FUNC6(nm_info.def_filename);
		if (defaultfn == NULL)
			FUNC4(EXIT_FAILURE, "strdup");
		argc = 1;
		argv = &defaultfn;
	}

	fa = FUNC5(argc, argv, O_RDONLY, 0, &rights, FA_OPEN);
	if (fa == NULL)
		FUNC4(EXIT_FAILURE, "failed to initialize fileargs");

	FUNC1();
	if (FUNC3() < 0)
		FUNC4(EXIT_FAILURE, "failed to limit stdio rights");
	if (FUNC2() < 0)
		FUNC4(EXIT_FAILURE, "failed to enter capability mode");

	nm_opts.fileargs = fa;
}