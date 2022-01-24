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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  Elf ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_MMAP_R ; 
 int /*<<< orphan*/  DW_DLC_READ ; 
 scalar_t__ DW_DLV_OK ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  _IOLBF ; 
 int base ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int demangle ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ *,char const*) ; 
 int func ; 
 int FUNC15 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int inlines ; 
 int /*<<< orphan*/  longopts ; 
 int FUNC16 (char const*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int pretty_print ; 
 int print_addr ; 
 scalar_t__ section_base ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 

int
FUNC21(int argc, char **argv)
{
	cap_rights_t rights;
	Elf *e;
	Dwarf_Debug dbg;
	Dwarf_Error de;
	const char *exe, *section;
	char line[1024];
	int fd, i, opt;

	exe = NULL;
	section = NULL;
	while ((opt = FUNC15(argc, argv, "ab:Ce:fij:psHV", longopts,
	    NULL)) != -1) {
		switch (opt) {
		case 'a':
			print_addr = 1;
			break;
		case 'b':
			/* ignored */
			break;
		case 'C':
			demangle = 1;
			break;
		case 'e':
			exe = optarg;
			break;
		case 'f':
			func = 1;
			break;
		case 'i':
			inlines = 1;
			break;
		case 'j':
			section = optarg;
			break;
		case 'p':
			pretty_print = 1;
			break;
		case 's':
			base = 1;
			break;
		case 'H':
			FUNC19();
		case 'V':
			FUNC20();
		default:
			FUNC19();
		}
	}

	argv += optind;
	argc -= optind;

	if (exe == NULL)
		exe = "a.out";

	if ((fd = FUNC16(exe, O_RDONLY)) < 0)
		FUNC10(EXIT_FAILURE, "%s", exe);

	if (FUNC4(fd, FUNC0(&rights, CAP_FSTAT,
	    CAP_MMAP_R)) < 0)
		FUNC11(EXIT_FAILURE, "caph_rights_limit");

	FUNC1();
	if (FUNC3() < 0)
		FUNC11(EXIT_FAILURE, "failed to limit stdio rights");
	if (FUNC2() < 0)
		FUNC11(EXIT_FAILURE, "failed to enter capability mode");

	if (FUNC8(fd, DW_DLC_READ, NULL, NULL, &dbg, &de))
		FUNC11(EXIT_FAILURE, "dwarf_init: %s", FUNC5(de));

	if (FUNC7(dbg, &e, &de) != DW_DLV_OK)
		FUNC11(EXIT_FAILURE, "dwarf_get_elf: %s", FUNC5(de));

	if (section)
		FUNC14(exe, e, section);
	else
		section_base = 0;

	if (argc > 0)
		for (i = 0; i < argc; i++)
			FUNC18(dbg, e, argv[i]);
	else {
		FUNC17(stdout, NULL, _IOLBF, 0);
		while (FUNC13(line, sizeof(line), stdin) != NULL)
			FUNC18(dbg, e, line);
	}

	FUNC6(dbg, &de);

	(void) FUNC9(e);

	FUNC12(0);
}