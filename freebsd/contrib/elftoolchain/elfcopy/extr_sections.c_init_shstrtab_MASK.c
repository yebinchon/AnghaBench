#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct section {char* name; int align; int /*<<< orphan*/  strtab; scalar_t__ vma; int /*<<< orphan*/  type; scalar_t__ loadable; scalar_t__ sz; int /*<<< orphan*/ * is; } ;
struct elfcopy {struct section* shstrtab; int /*<<< orphan*/  ein; } ;
struct TYPE_4__ {size_t sh_size; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SHT_STRTAB ; 
 int /*<<< orphan*/  FUNC0 (struct elfcopy*,char*) ; 
 struct section* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC10(struct elfcopy *ecp)
{
	Elf_Scn *shstrtab;
	GElf_Shdr shdr;
	struct section *s;
	size_t indx, sizehint;

	if (FUNC5(ecp->ein, &indx) == 0) {
		shstrtab = FUNC4(ecp->ein, indx);
		if (shstrtab == NULL)
			FUNC8(EXIT_FAILURE, "elf_getscn failed: %s",
			    FUNC2(-1));
		if (FUNC9(shstrtab, &shdr) != &shdr)
			FUNC8(EXIT_FAILURE, "gelf_getshdr failed: %s",
			    FUNC2(-1));
		sizehint = shdr.sh_size;
	} else {
		/* Clear the error from elf_getshdrstrndx(3). */
		(void)FUNC3();
		sizehint = 0;
	}

	if ((ecp->shstrtab = FUNC1(1, sizeof(*ecp->shstrtab))) == NULL)
		FUNC7(EXIT_FAILURE, "calloc failed");
	s = ecp->shstrtab;
	s->name = ".shstrtab";
	s->is = NULL;
	s->sz = 0;
	s->align = 1;
	s->loadable = 0;
	s->type = SHT_STRTAB;
	s->vma = 0;
	s->strtab = FUNC6(sizehint);

	FUNC0(ecp, "");
	FUNC0(ecp, ".symtab");
	FUNC0(ecp, ".strtab");
	FUNC0(ecp, ".shstrtab");
}