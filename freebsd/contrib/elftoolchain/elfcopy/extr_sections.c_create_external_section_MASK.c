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
typedef  scalar_t__ uint64_t ;
struct section {char const* name; char* newname; int loadable; int nocopy; scalar_t__ align; scalar_t__ vma; scalar_t__ type; int /*<<< orphan*/ * os; int /*<<< orphan*/ * is; scalar_t__ sz; scalar_t__ off; } ;
struct elfcopy {int /*<<< orphan*/  flags; int /*<<< orphan*/  eout; } ;
struct TYPE_7__ {int /*<<< orphan*/  d_version; int /*<<< orphan*/  d_type; scalar_t__ d_size; void* d_buf; scalar_t__ d_off; scalar_t__ d_align; } ;
struct TYPE_6__ {scalar_t__ sh_addralign; scalar_t__ sh_addr; scalar_t__ sh_type; scalar_t__ sh_flags; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Type ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  EV_CURRENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SYMTAB_INTACT ; 
 int /*<<< orphan*/  FUNC0 (struct elfcopy*,char const*) ; 
 struct section* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct elfcopy*,struct section*,int) ; 

struct section *
FUNC10(struct elfcopy *ecp, const char *name, char *newname,
    void *buf, uint64_t size, uint64_t off, uint64_t stype, Elf_Type dtype,
    uint64_t flags, uint64_t align, uint64_t vma, int loadable)
{
	struct section	*s;
	Elf_Scn		*os;
	Elf_Data	*od;
	GElf_Shdr	 osh;

	if ((os = FUNC4(ecp->eout)) == NULL)
		FUNC6(EXIT_FAILURE, "elf_newscn() failed: %s",
		    FUNC2(-1));
	if ((s = FUNC1(1, sizeof(*s))) == NULL)
		FUNC5(EXIT_FAILURE, "calloc failed");
	s->name = name;
	s->newname = newname;	/* needs to be free()'ed */
	s->off = off;
	s->sz = size;
	s->vma = vma;
	s->align = align;
	s->loadable = loadable;
	s->is = NULL;
	s->os = os;
	s->type = stype;
	s->nocopy = 1;
	FUNC9(ecp, s, 1);

	if (FUNC7(os, &osh) == NULL)
		FUNC6(EXIT_FAILURE, "gelf_getshdr() failed: %s",
		    FUNC2(-1));
	osh.sh_flags = flags;
	osh.sh_type = s->type;
	osh.sh_addr = s->vma;
	osh.sh_addralign = s->align;
	if (!FUNC8(os, &osh))
		FUNC6(EXIT_FAILURE, "gelf_update_shdr() failed: %s",
		    FUNC2(-1));
	FUNC0(ecp, name);

	if (buf != NULL && size != 0) {
		if ((od = FUNC3(os)) == NULL)
			FUNC6(EXIT_FAILURE, "elf_newdata() failed: %s",
			    FUNC2(-1));
		od->d_align = align;
		od->d_off = 0;
		od->d_buf = buf;
		od->d_size = size;
		od->d_type = dtype;
		od->d_version = EV_CURRENT;
	}

	/*
	 * Clear SYMTAB_INTACT, as we probably need to update/add new
	 * STT_SECTION symbols into the symbol table.
	 */
	ecp->flags &= ~SYMTAB_INTACT;

	return (s);
}