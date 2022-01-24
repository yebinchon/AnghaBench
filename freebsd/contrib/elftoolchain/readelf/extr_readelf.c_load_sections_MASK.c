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
struct section {char const* name; size_t link; int /*<<< orphan*/  info; int /*<<< orphan*/  addr; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  align; int /*<<< orphan*/  entsize; int /*<<< orphan*/  sz; int /*<<< orphan*/  off; int /*<<< orphan*/ * scn; } ;
struct readelf {size_t shnum; struct section* sl; int /*<<< orphan*/  elf; } ;
struct TYPE_3__ {size_t sh_link; int /*<<< orphan*/  sh_info; int /*<<< orphan*/  sh_addr; int /*<<< orphan*/  sh_flags; int /*<<< orphan*/  sh_type; int /*<<< orphan*/  sh_addralign; int /*<<< orphan*/  sh_entsize; int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 size_t SHN_UNDEF ; 
 struct section* FUNC0 (size_t,int) ; 
 char const* FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct section*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static void
FUNC13(struct readelf *re)
{
	struct section	*s;
	const char	*name;
	Elf_Scn		*scn;
	GElf_Shdr	 sh;
	size_t		 shstrndx, ndx;
	int		 elferr;

	/* Allocate storage for internal section list. */
	if (!FUNC4(re->elf, &re->shnum)) {
		FUNC12("elf_getshnum failed: %s", FUNC1(-1));
		return;
	}
	if (re->sl != NULL)
		FUNC10(re->sl);
	if ((re->sl = FUNC0(re->shnum, sizeof(*re->sl))) == NULL)
		FUNC9(EXIT_FAILURE, "calloc failed");

	/* Get the index of .shstrtab section. */
	if (!FUNC5(re->elf, &shstrndx)) {
		FUNC12("elf_getshstrndx failed: %s", FUNC1(-1));
		return;
	}

	if ((scn = FUNC3(re->elf, 0)) == NULL)
		return;

	(void) FUNC2();
	do {
		if (FUNC11(scn, &sh) == NULL) {
			FUNC12("gelf_getshdr failed: %s", FUNC1(-1));
			(void) FUNC2();
			continue;
		}
		if ((name = FUNC8(re->elf, shstrndx, sh.sh_name)) == NULL) {
			(void) FUNC2();
			name = "<no-name>";
		}
		if ((ndx = FUNC6(scn)) == SHN_UNDEF) {
			if ((elferr = FUNC2()) != 0) {
				FUNC12("elf_ndxscn failed: %s",
				    FUNC1(elferr));
				continue;
			}
		}
		if (ndx >= re->shnum) {
			FUNC12("section index of '%s' out of range", name);
			continue;
		}
		if (sh.sh_link >= re->shnum)
			FUNC12("section link %llu of '%s' out of range",
			    (unsigned long long)sh.sh_link, name);
		s = &re->sl[ndx];
		s->name = name;
		s->scn = scn;
		s->off = sh.sh_offset;
		s->sz = sh.sh_size;
		s->entsize = sh.sh_entsize;
		s->align = sh.sh_addralign;
		s->type = sh.sh_type;
		s->flags = sh.sh_flags;
		s->addr = sh.sh_addr;
		s->link = sh.sh_link;
		s->info = sh.sh_info;
	} while ((scn = FUNC7(re->elf, scn)) != NULL);
	elferr = FUNC2();
	if (elferr != 0)
		FUNC12("elf_nextscn failed: %s", FUNC1(elferr));
}