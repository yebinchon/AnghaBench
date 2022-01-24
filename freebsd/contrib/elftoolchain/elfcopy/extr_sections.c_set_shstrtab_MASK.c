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
struct section {size_t sz; int /*<<< orphan*/ * os; int /*<<< orphan*/  strtab; int /*<<< orphan*/  off; } ;
struct elfcopy {int flags; int /*<<< orphan*/  eout; struct section* shstrtab; } ;
struct TYPE_7__ {int d_align; size_t d_size; int /*<<< orphan*/  d_version; int /*<<< orphan*/  d_type; scalar_t__ d_off; void* d_buf; } ;
struct TYPE_6__ {int sh_addralign; size_t sh_size; scalar_t__ sh_link; scalar_t__ sh_info; scalar_t__ sh_entsize; scalar_t__ sh_flags; int /*<<< orphan*/  sh_type; int /*<<< orphan*/  sh_offset; scalar_t__ sh_addr; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_T_BYTE ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SHT_STRTAB ; 
 int SYMTAB_EXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct elfcopy*,struct section*,int) ; 

__attribute__((used)) static void
FUNC11(struct elfcopy *ecp)
{
	struct section	*s;
	Elf_Data	*data;
	GElf_Shdr	 sh;
	const char	*image;
	size_t		 sz;

	s = ecp->shstrtab;

	if (s->os == NULL) {
		/* Input object does not contain .shstrtab section */
		if ((s->os = FUNC3(ecp->eout)) == NULL)
			FUNC7(EXIT_FAILURE, "elf_newscn failed: %s",
			    FUNC0(-1));
		FUNC10(ecp, s, 1);
	}

	if (FUNC8(s->os, &sh) == NULL)
		FUNC7(EXIT_FAILURE, "gelf_getshdr() failed: %s",
		    FUNC0(-1));
	sh.sh_addr	= 0;
	sh.sh_addralign	= 1;
	sh.sh_offset	= s->off;
	sh.sh_type	= SHT_STRTAB;
	sh.sh_flags	= 0;
	sh.sh_entsize	= 0;
	sh.sh_info	= 0;
	sh.sh_link	= 0;

	if ((data = FUNC2(s->os)) == NULL)
		FUNC7(EXIT_FAILURE, "elf_newdata() failed: %s",
		    FUNC0(-1));

	/*
	 * If we don't have a symbol table, skip those a few bytes
	 * which are reserved for this in the beginning of shstrtab.
	 */
	if (!(ecp->flags & SYMTAB_EXIST)) {
		FUNC6(s->strtab, ".symtab");
		FUNC6(s->strtab, ".strtab");
	}

	image = FUNC5(s->strtab, &sz);
	s->sz = sz;

	sh.sh_size	= sz;
	if (!FUNC9(s->os, &sh))
		FUNC7(EXIT_FAILURE, "gelf_update_shdr() failed: %s",
		    FUNC0(-1));

	data->d_align	= 1;
	data->d_buf	= (void *)(uintptr_t)image;
	data->d_size	= sz;
	data->d_off	= 0;
	data->d_type	= ELF_T_BYTE;
	data->d_version	= EV_CURRENT;

	if (!FUNC4(ecp->eout, FUNC1(s->os)))
		FUNC7(EXIT_FAILURE, "elf_setshstrndx() failed: %s",
		     FUNC0(-1));
}