#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct section {int align; int pseudo; int loadable; char const* name; scalar_t__ type; int flags; int /*<<< orphan*/ * os; scalar_t__ off; int /*<<< orphan*/  vma; scalar_t__ sz; int /*<<< orphan*/ * is; } ;
struct elfcopy {int ophnum; scalar_t__ strip; int flags; struct section* strtab; struct section* symtab; scalar_t__* secndx; int /*<<< orphan*/  eout; int /*<<< orphan*/ * debuglink; struct section* shstrtab; int /*<<< orphan*/  ein; } ;
struct TYPE_3__ {scalar_t__ sh_type; scalar_t__ sh_info; int sh_addralign; int sh_flags; scalar_t__ sh_offset; int /*<<< orphan*/  sh_addr; scalar_t__ sh_size; int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_T_EHDR ; 
 int /*<<< orphan*/  ELF_T_PHDR ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int RELOCATABLE ; 
 int SEC_ADD ; 
 int SF_ALLOC ; 
 int SF_LOAD ; 
 int SHF_ALLOC ; 
 int SHF_GROUP ; 
 scalar_t__ SHN_UNDEF ; 
 scalar_t__ SHT_GROUP ; 
 scalar_t__ SHT_NOBITS ; 
 scalar_t__ SHT_NOTE ; 
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 scalar_t__ STRIP_ALL ; 
 scalar_t__ STRIP_NONDEBUG ; 
 int SYMTAB_EXIST ; 
 int SYMTAB_INTACT ; 
 int /*<<< orphan*/  FUNC0 (struct elfcopy*) ; 
 void* FUNC1 (struct elfcopy*,struct section*) ; 
 struct section* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct elfcopy*,struct section*) ; 
 int /*<<< orphan*/  FUNC4 (struct elfcopy*,struct section*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC16 (struct elfcopy*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC18 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC19 (struct elfcopy*,struct section*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct elfcopy*,scalar_t__) ; 
 scalar_t__ FUNC21 (struct elfcopy*,char const*) ; 
 scalar_t__ FUNC22 (char const*,char*) ; 

void
FUNC23(struct elfcopy *ecp)
{
	struct section	*s;
	const char	*name;
	Elf_Scn		*is;
	GElf_Shdr	 ish;
	size_t		 indx;
	uint64_t	 oldndx, newndx;
	int		 elferr, sec_flags, reorder;

	/*
	 * Insert a pseudo section that contains the ELF header
	 * and program header. Used as reference for section offset
	 * or load address adjustment.
	 */
	if ((s = FUNC2(1, sizeof(*s))) == NULL)
		FUNC12(EXIT_FAILURE, "calloc failed");
	s->off = 0;
	s->sz = FUNC14(ecp->eout, ELF_T_EHDR, 1, EV_CURRENT) +
	    FUNC14(ecp->eout, ELF_T_PHDR, ecp->ophnum, EV_CURRENT);
	s->align = 1;
	s->pseudo = 1;
	s->loadable = FUNC1(ecp, s);
	FUNC19(ecp, s, 0);

	/* Create internal .shstrtab section. */
	FUNC17(ecp);

	if (FUNC7(ecp->ein, &indx) == 0)
		FUNC13(EXIT_FAILURE, "elf_getshstrndx failed: %s",
		    FUNC5(-1));

	reorder = 0;
	is = NULL;
	while ((is = FUNC10(ecp->ein, is)) != NULL) {
		if (FUNC15(is, &ish) == NULL)
			FUNC13(EXIT_FAILURE, "gelf_getshdr failed: %s",
			    FUNC5(-1));
		if ((name = FUNC11(ecp->ein, indx, ish.sh_name)) == NULL)
			FUNC13(EXIT_FAILURE, "elf_strptr failed: %s",
			    FUNC5(-1));

		/* Skip sections to be removed. */
		if (FUNC21(ecp, name))
			continue;

		/*
		 * Relocation section need to be remove if the section
		 * it applies will be removed.
		 */
		if (ish.sh_type == SHT_REL || ish.sh_type == SHT_RELA)
			if (ish.sh_info != 0 &&
			    FUNC20(ecp, ish.sh_info))
				continue;

		/*
		 * Section groups should be removed if symbol table will
		 * be removed. (section group's signature stored in symbol
		 * table)
		 */
		if (ish.sh_type == SHT_GROUP && ecp->strip == STRIP_ALL)
			continue;

		/* Get section flags set by user. */
		sec_flags = FUNC16(ecp, name);

		/* Create internal section object. */
		if (FUNC22(name, ".shstrtab") != 0) {
			if ((s = FUNC2(1, sizeof(*s))) == NULL)
				FUNC12(EXIT_FAILURE, "calloc failed");
			s->name		= name;
			s->is		= is;
			s->off		= ish.sh_offset;
			s->sz		= ish.sh_size;
			s->align	= ish.sh_addralign;
			s->type		= ish.sh_type;
			s->flags	= ish.sh_flags;
			s->vma		= ish.sh_addr;

			/*
			 * Search program headers to determine whether section
			 * is loadable, but if user explicitly set section flags
			 * while neither "load" nor "alloc" is set, we make the
			 * section unloadable.
			 *
			 * Sections in relocatable object is loadable if
			 * section flag SHF_ALLOC is set.
			 */
			if (sec_flags &&
			    (sec_flags & (SF_LOAD | SF_ALLOC)) == 0)
				s->loadable = 0;
			else {
				s->loadable = FUNC1(ecp, s);
				if ((ecp->flags & RELOCATABLE) &&
				    (ish.sh_flags & SHF_ALLOC))
					s->loadable = 1;
			}
		} else {
			/* Assuming .shstrtab is "unloadable". */
			s		= ecp->shstrtab;
			s->off		= ish.sh_offset;
		}

		oldndx = newndx = SHN_UNDEF;
		if (FUNC22(name, ".symtab") != 0 &&
		    FUNC22(name, ".strtab") != 0) {
			if (!FUNC22(name, ".shstrtab")) {
				/*
				 * Add sections specified by --add-section and
				 * gnu debuglink. we want these sections have
				 * smaller index than .shstrtab section.
				 */
				if (ecp->debuglink != NULL)
					FUNC0(ecp);
				if (ecp->flags & SEC_ADD)
					FUNC18(ecp);
			}
 			if ((s->os = FUNC9(ecp->eout)) == NULL)
				FUNC13(EXIT_FAILURE, "elf_newscn failed: %s",
				    FUNC5(-1));
			if ((newndx = FUNC8(s->os)) == SHN_UNDEF)
				FUNC13(EXIT_FAILURE, "elf_ndxscn failed: %s",
				    FUNC5(-1));
		}
		if ((oldndx = FUNC8(is)) == SHN_UNDEF)
			FUNC13(EXIT_FAILURE, "elf_ndxscn failed: %s",
			    FUNC5(-1));
		if (oldndx != SHN_UNDEF && newndx != SHN_UNDEF)
			ecp->secndx[oldndx] = newndx;

		/*
		 * If strip action is STRIP_NONDEBUG(only keep debug),
		 * change sections type of loadable sections and section
		 * groups to SHT_NOBITS, and the content of those sections
		 * will be discarded. However, SHT_NOTE sections should
		 * be kept.
		 */
		if (ecp->strip == STRIP_NONDEBUG) {
			if (((ish.sh_flags & SHF_ALLOC) ||
			    (ish.sh_flags & SHF_GROUP)) &&
			    ish.sh_type != SHT_NOTE)
				s->type = SHT_NOBITS;
		}

		FUNC3(ecp, s);

		/* create section header based on input object. */
		if (FUNC22(name, ".symtab") != 0 &&
		    FUNC22(name, ".strtab") != 0 &&
		    FUNC22(name, ".shstrtab") != 0) {
			FUNC4(ecp, s, NULL, 0, sec_flags);
			/*
			 * elfcopy puts .symtab, .strtab and .shstrtab
			 * sections in the end of the output object.
			 * If the input objects have more sections
			 * after any of these 3 sections, the section
			 * table will be reordered. section symbols
			 * should be regenerated for relocations.
			 */
			if (reorder)
				ecp->flags &= ~SYMTAB_INTACT;
		} else
			reorder = 1;

		if (FUNC22(name, ".symtab") == 0) {
			ecp->flags |= SYMTAB_EXIST;
			ecp->symtab = s;
		}
		if (FUNC22(name, ".strtab") == 0)
			ecp->strtab = s;

		FUNC19(ecp, s, 0);
	}
	elferr = FUNC6();
	if (elferr != 0)
		FUNC13(EXIT_FAILURE, "elf_nextscn failed: %s",
		    FUNC5(elferr));
}