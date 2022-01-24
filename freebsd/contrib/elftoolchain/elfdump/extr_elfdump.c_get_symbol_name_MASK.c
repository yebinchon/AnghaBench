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
typedef  size_t uint32_t ;
struct section {scalar_t__ type; char* name; int /*<<< orphan*/  link; int /*<<< orphan*/  scn; } ;
struct elfdump {size_t shnum; int /*<<< orphan*/  elf; struct section* sl; } ;
typedef  int /*<<< orphan*/  sname ;
struct TYPE_4__ {size_t st_shndx; int /*<<< orphan*/  st_name; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ GElf_Sym ;
typedef  int /*<<< orphan*/  Elf_Data ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHT_DYNSYM ; 
 scalar_t__ SHT_SYMTAB ; 
 scalar_t__ STT_SECTION ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC8(struct elfdump *ed, uint32_t symtab, int i)
{
	static char	 sname[64];
	struct section	*s;
	const char	*name;
	GElf_Sym	 sym;
	Elf_Data	*data;
	int		 elferr;

	if (symtab >= ed->shnum)
		return ("");
	s = &ed->sl[symtab];
	if (s->type != SHT_SYMTAB && s->type != SHT_DYNSYM)
		return ("");
	(void) FUNC2();
	if ((data = FUNC3(s->scn, NULL)) == NULL) {
		elferr = FUNC2();
		if (elferr != 0)
			FUNC7("elf_getdata failed: %s", FUNC1(elferr));
		return ("");
	}
	if (FUNC5(data, i, &sym) != &sym)
		return ("");
	if (FUNC0(sym.st_info) == STT_SECTION) {
		if (sym.st_shndx < ed->shnum) {
			FUNC6(sname, sizeof(sname), "%s (section)",
			    ed->sl[sym.st_shndx].name);
			return (sname);
		} else
			return ("");
	}
	if ((name = FUNC4(ed->elf, s->link, sym.st_name)) == NULL)
		return ("");

	return (name);
}