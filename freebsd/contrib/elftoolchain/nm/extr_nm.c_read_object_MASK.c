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
struct TYPE_2__ {scalar_t__ print_name; scalar_t__ elem_print_fn; int print_armap; int /*<<< orphan*/  fileargs; } ;
typedef  scalar_t__ Elf_Kind ;
typedef  int /*<<< orphan*/  Elf_Cmd ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
 scalar_t__ ELF_K_AR ; 
 scalar_t__ ELF_K_NONE ; 
 scalar_t__ PRINT_NAME_MULTI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char const* FUNC4 (int) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__ nm_opts ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ sym_elem_print_all ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static int
FUNC14(const char *filename)
{
	Elf *elf, *arf;
	Elf_Cmd elf_cmd;
	Elf_Kind kind;
	int fd, rtn, e_err;

	FUNC0(filename != NULL && "filename is null");

	if ((fd = FUNC8(nm_opts.fileargs, filename)) == -1) {
		FUNC12("'%s'", filename);
		return (1);
	}

	elf_cmd = ELF_C_READ;
	if ((arf = FUNC2(fd, elf_cmd, (Elf *) NULL)) == NULL) {
		if ((e_err = FUNC5()) != 0)
			FUNC13("elf_begin error: %s", FUNC4(e_err));
		else
			FUNC13("elf_begin error");
		FUNC1(fd);
		return (1);
	}

	FUNC0(arf != NULL && "arf is null.");

	rtn = 0;
	if ((kind = FUNC6(arf)) == ELF_K_NONE) {
		FUNC13("%s: File format not recognized", filename);
		FUNC3(arf);
		FUNC1(fd);
		return (1);
	}
	if (kind == ELF_K_AR) {
		if (nm_opts.print_name == PRINT_NAME_MULTI &&
		    nm_opts.elem_print_fn == sym_elem_print_all)
			FUNC10("\n%s:\n", filename);
		if (nm_opts.print_armap == true)
			FUNC9(fd, arf);
	}

	while ((elf = FUNC2(fd, elf_cmd, arf)) != NULL) {
		rtn |= FUNC11(elf, filename, kind);

		/*
		 * If file is not archive, elf_next return ELF_C_NULL and
		 * stop the loop.
		 */
		elf_cmd = FUNC7(elf);
		FUNC3(elf);
	}

	FUNC3(arf);
	FUNC1(fd);

	return (rtn);
}