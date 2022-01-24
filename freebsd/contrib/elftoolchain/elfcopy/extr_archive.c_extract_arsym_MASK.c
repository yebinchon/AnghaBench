#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct elfcopy {int /*<<< orphan*/  eout; } ;
struct TYPE_13__ {int d_size; } ;
struct TYPE_12__ {scalar_t__ sh_type; size_t sh_size; int sh_entsize; int /*<<< orphan*/  sh_name; } ;
struct TYPE_11__ {scalar_t__ st_shndx; int /*<<< orphan*/  st_name; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ GElf_Sym ;
typedef  TYPE_2__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_3__ Elf_Data ;

/* Variables and functions */
 scalar_t__ ELF_K_ELF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHN_UNDEF ; 
 scalar_t__ SHT_SYMTAB ; 
 scalar_t__ STB_GLOBAL ; 
 scalar_t__ STB_WEAK ; 
 int /*<<< orphan*/  FUNC1 (struct elfcopy*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC11 (TYPE_3__*,int,TYPE_1__*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static void
FUNC14(struct elfcopy *ecp)
{
	Elf_Scn		*scn;
	GElf_Shdr	 shdr;
	GElf_Sym	 sym;
	Elf_Data	*data;
	char		*name;
	size_t		 n, shstrndx;
	int		 elferr, tabndx, len, i;

	if (FUNC6(ecp->eout) != ELF_K_ELF) {
		FUNC13("internal: cannot extract symbols from non-elf object");
		return;
	}
	if (FUNC5(ecp->eout, &shstrndx) == 0) {
		FUNC13("elf_getshstrndx failed: %s", FUNC2(-1));
		return;
	}

	tabndx = -1;
	scn = NULL;
	while ((scn = FUNC8(ecp->eout, scn)) != NULL) {
		if (FUNC10(scn, &shdr) != &shdr) {
			FUNC13("elf_getshdr failed: %s", FUNC2(-1));
			continue;
		}
		if ((name = FUNC9(ecp->eout, shstrndx, shdr.sh_name)) ==
		    NULL) {
			FUNC13("elf_strptr failed: %s", FUNC2(-1));
			continue;
		}
		if (FUNC12(name, ".strtab") == 0) {
			tabndx = FUNC7(scn);
			break;
		}
	}
	elferr = FUNC3();
	if (elferr != 0)
		FUNC13("elf_nextscn failed: %s", FUNC2(elferr));

	/* Ignore members without symbol table. */
	if (tabndx == -1)
		return;

	scn = NULL;
	while ((scn = FUNC8(ecp->eout, scn)) != NULL) {
		if (FUNC10(scn, &shdr) != &shdr) {
			FUNC13("elf_getshdr failed: %s", FUNC2(-1));
			continue;
		}
		if (shdr.sh_type != SHT_SYMTAB)
			continue;

		data = NULL;
		n = 0;
		while (n < shdr.sh_size &&
		    (data = FUNC4(scn, data)) != NULL) {
			len = data->d_size / shdr.sh_entsize;
			for (i = 0; i < len; i++) {
				if (FUNC11(data, i, &sym) != &sym) {
					FUNC13("gelf_getsym failed: %s",
					     FUNC2(-1));
					continue;
				}

				/* keep only global or weak symbols */
				if (FUNC0(sym.st_info) != STB_GLOBAL &&
				    FUNC0(sym.st_info) != STB_WEAK)
					continue;

				/* keep only defined symbols */
				if (sym.st_shndx == SHN_UNDEF)
					continue;

				if ((name = FUNC9(ecp->eout, tabndx,
				    sym.st_name)) == NULL) {
					FUNC13("elf_strptr failed: %s",
					     FUNC2(-1));
					continue;
				}

				FUNC1(ecp, name);
			}
		}
	}
	elferr = FUNC3();
	if (elferr != 0)
		FUNC13("elf_nextscn failed: %s", FUNC2(elferr));
}