#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ e_type; } ;
struct TYPE_6__ {scalar_t__ sh_size; scalar_t__ sh_addr; int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 scalar_t__ ET_DYN ; 
 scalar_t__ ET_EXEC ; 
 scalar_t__ ET_REL ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ section_base ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(const char *exe, Elf *e, const char *section)
{
	Dwarf_Addr off;
	Elf_Scn *scn;
	GElf_Ehdr eh;
	GElf_Shdr sh;
	size_t shstrndx;
	int elferr;
	const char *name;

	if (FUNC6(e, &eh) != &eh) {
		FUNC9("gelf_getehdr failed: %s", FUNC0(-1));
		return;
	}

	if (!FUNC2(e, &shstrndx)) {
		FUNC9("elf_getshstrndx failed: %s", FUNC0(-1));
		return;
	}

	(void) FUNC1();
	off = 0;
	scn = NULL;
	while ((scn = FUNC3(e, scn)) != NULL) {
		if (FUNC7(scn, &sh) == NULL) {
			FUNC9("gelf_getshdr failed: %s", FUNC0(-1));
			continue;
		}
		if ((name = FUNC4(e, shstrndx, sh.sh_name)) == NULL)
			goto next;
		if (!FUNC8(section, name)) {
			if (eh.e_type == ET_EXEC || eh.e_type == ET_DYN) {
				/*
				 * For executables, section base is the virtual
				 * address of the specified section.
				 */
				section_base = sh.sh_addr;
			} else if (eh.e_type == ET_REL) {
				/*
				 * For relocatables, section base is the
				 * relative offset of the specified section
				 * to the start of the first section.
				 */
				section_base = off;
			} else
				FUNC9("unknown e_type %u", eh.e_type);
			return;
		}
	next:
		off += sh.sh_size;
	}
	elferr = FUNC1();
	if (elferr != 0)
		FUNC9("elf_nextscn failed: %s", FUNC0(elferr));

	FUNC5(EXIT_FAILURE, "%s: cannot find section %s", exe, section);
}