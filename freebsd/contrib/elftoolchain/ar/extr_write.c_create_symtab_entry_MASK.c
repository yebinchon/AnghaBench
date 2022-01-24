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
struct bsdar {int dummy; } ;
struct TYPE_13__ {int d_size; } ;
struct TYPE_12__ {scalar_t__ sh_type; size_t sh_size; int sh_entsize; int /*<<< orphan*/  sh_name; } ;
struct TYPE_11__ {scalar_t__ st_shndx; int /*<<< orphan*/  st_name; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ GElf_Sym ;
typedef  TYPE_2__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_3__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 scalar_t__ ELF_K_ELF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHN_UNDEF ; 
 scalar_t__ SHT_SYMTAB ; 
 scalar_t__ STB_GLOBAL ; 
 scalar_t__ STB_WEAK ; 
 int /*<<< orphan*/  FUNC1 (struct bsdar*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bsdar*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC12 (TYPE_3__*,int,TYPE_1__*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 

__attribute__((used)) static void
FUNC14(struct bsdar *bsdar, Elf *e)
{
	Elf_Scn		*scn;
	GElf_Shdr	 shdr;
	GElf_Sym	 sym;
	Elf_Data	*data;
	char		*name;
	size_t		 n, shstrndx;
	int		 elferr, tabndx, len, i;

	if (FUNC7(e) != ELF_K_ELF) {
		/* Silently a ignore non-ELF member. */
		return;
	}
	if (FUNC6(e, &shstrndx) == 0) {
		FUNC2(bsdar, 0, "elf_getshstrndx failed: %s",
		     FUNC3(-1));
		return;
	}

	tabndx = -1;
	scn = NULL;
	while ((scn = FUNC9(e, scn)) != NULL) {
		if (FUNC11(scn, &shdr) != &shdr) {
			FUNC2(bsdar, 0,
			    "elf_getshdr failed: %s", FUNC3(-1));
			continue;
		}
		if ((name = FUNC10(e, shstrndx, shdr.sh_name)) == NULL) {
			FUNC2(bsdar, 0,
			    "elf_strptr failed: %s", FUNC3(-1));
			continue;
		}
		if (FUNC13(name, ".strtab") == 0) {
			tabndx = FUNC8(scn);
			break;
		}
	}
	elferr = FUNC4();
	if (elferr != 0)
		FUNC2(bsdar, 0, "elf_nextscn failed: %s",
		     FUNC3(elferr));
	if (tabndx == -1) {
		FUNC2(bsdar, 0, "can't find .strtab section");
		return;
	}

	scn = NULL;
	while ((scn = FUNC9(e, scn)) != NULL) {
		if (FUNC11(scn, &shdr) != &shdr) {
			FUNC2(bsdar, 0, "elf_getshdr failed: %s",
			    FUNC3(-1));
			continue;
		}
		if (shdr.sh_type != SHT_SYMTAB)
			continue;

		data = NULL;
		n = 0;
		while (n < shdr.sh_size &&
		    (data = FUNC5(scn, data)) != NULL) {
			len = data->d_size / shdr.sh_entsize;
			for (i = 0; i < len; i++) {
				if (FUNC12(data, i, &sym) != &sym) {
					FUNC2(bsdar, 0,
					    "gelf_getsym failed: %s",
					     FUNC3(-1));
					continue;
				}

				/* Keep only global and weak symbols. */
				if (FUNC0(sym.st_info) != STB_GLOBAL &&
				    FUNC0(sym.st_info) != STB_WEAK)
					continue;

				/* Keep only defined symbols. */
				if (sym.st_shndx == SHN_UNDEF)
					continue;

				if ((name = FUNC10(e, tabndx,
				    sym.st_name)) == NULL) {
					FUNC2(bsdar, 0,
					    "elf_strptr failed: %s",
					     FUNC3(-1));
					continue;
				}

				FUNC1(bsdar, name);
			}
		}
	}
	elferr = FUNC4();
	if (elferr != 0)
		FUNC2(bsdar, 0, "elf_nextscn failed: %s",
		     FUNC3(elferr));
}