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
struct elfdump {char* filename; char* archive; int flags; int /*<<< orphan*/ * elf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
#define  ELF_K_AR 130 
#define  ELF_K_ELF 129 
#define  ELF_K_NONE 128 
 int /*<<< orphan*/  O_RDONLY ; 
 int PRINT_FILENAME ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct elfdump*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct elfdump*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct elfdump*) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void
FUNC12(struct elfdump *ed)
{
	int fd;

	if ((fd = FUNC8(ed->filename, O_RDONLY)) == -1) {
		FUNC10("open %s failed", ed->filename);
		return;
	}

#ifdef	USE_LIBARCHIVE_AR
	if (ac_detect_ar(fd)) {
		ed->archive = ed->filename;
		ac_print_ar(ed, fd);
		return;
	}
#endif	/* USE_LIBARCHIVE_AR */

	if ((ed->elf = FUNC2(fd, ELF_C_READ, NULL)) == NULL) {
		FUNC11("elf_begin() failed: %s", FUNC4(-1));
		return;
	}

	switch (FUNC5(ed->elf)) {
	case ELF_K_NONE:
		FUNC11("Not an ELF file.");
		return;
	case ELF_K_ELF:
		if (ed->flags & PRINT_FILENAME)
			FUNC9("\n%s:\n", ed->filename);
		FUNC7(ed);
		break;
	case ELF_K_AR:
#ifndef	USE_LIBARCHIVE_AR
		ed->archive = ed->filename;
		FUNC6(ed, fd);
#endif
		break;
	default:
		FUNC11("Internal: libelf returned unknown elf kind.");
		return;
	}

	FUNC3(ed->elf);
}