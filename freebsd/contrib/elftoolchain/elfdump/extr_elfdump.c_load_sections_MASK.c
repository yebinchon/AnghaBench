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
struct section {char const* name; int /*<<< orphan*/  info; int /*<<< orphan*/  link; int /*<<< orphan*/  addr; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  align; int /*<<< orphan*/  entsize; int /*<<< orphan*/  sz; int /*<<< orphan*/  off; int /*<<< orphan*/ * scn; } ;
struct elfdump {size_t shnum; struct section* sl; int /*<<< orphan*/  elf; } ;
struct TYPE_3__ {int /*<<< orphan*/  sh_info; int /*<<< orphan*/  sh_link; int /*<<< orphan*/  sh_addr; int /*<<< orphan*/  sh_flags; int /*<<< orphan*/  sh_type; int /*<<< orphan*/  sh_addralign; int /*<<< orphan*/  sh_entsize; int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 size_t SHN_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct section* FUNC1 (size_t,int) ; 
 char const* FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 

__attribute__((used)) static void
FUNC13(struct elfdump *ed)
{
	struct section	*s;
	const char	*name;
	Elf_Scn		*scn;
	GElf_Shdr	 sh;
	size_t		 shstrndx, ndx;
	int		 elferr;

	FUNC0(ed->sl == NULL);

	if (!FUNC5(ed->elf, &ed->shnum)) {
		FUNC12("elf_getshnum failed: %s", FUNC2(-1));
		return;
	}
	if (ed->shnum == 0)
		return;
	if ((ed->sl = FUNC1(ed->shnum, sizeof(*ed->sl))) == NULL)
		FUNC10(EXIT_FAILURE, "calloc failed");
	if (!FUNC6(ed->elf, &shstrndx)) {
		FUNC12("elf_getshstrndx failed: %s", FUNC2(-1));
		return;
	}
	if ((scn = FUNC4(ed->elf, 0)) == NULL) {
		FUNC12("elf_getscn failed: %s", FUNC2(-1));
		return;
	}
	(void) FUNC3();
	do {
		if (FUNC11(scn, &sh) == NULL) {
			FUNC12("gelf_getshdr failed: %s", FUNC2(-1));
			(void) FUNC3();
			continue;
		}
		if ((name = FUNC9(ed->elf, shstrndx, sh.sh_name)) == NULL) {
			(void) FUNC3();
			name = "ERROR";
		}
		if ((ndx = FUNC7(scn)) == SHN_UNDEF)
			if ((elferr = FUNC3()) != 0) {
				FUNC12("elf_ndxscn failed: %s",
				    FUNC2(elferr));
				continue;
			}
		if (ndx >= ed->shnum) {
			FUNC12("section index of '%s' out of range", name);
			continue;
		}
		s = &ed->sl[ndx];
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
	} while ((scn = FUNC8(ed->elf, scn)) != NULL);
	elferr = FUNC3();
	if (elferr != 0)
		FUNC12("elf_nextscn failed: %s", FUNC2(elferr));
}