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
struct section {scalar_t__ type; char const* name; scalar_t__ link; int /*<<< orphan*/  scn; } ;
struct readelf {scalar_t__ shnum; int /*<<< orphan*/  elf; struct section* sl; } ;
struct TYPE_4__ {scalar_t__ st_shndx; int /*<<< orphan*/  st_name; int /*<<< orphan*/  st_info; } ;
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
 char* FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC7(struct readelf *re, int symtab, int i)
{
	struct section	*s;
	const char	*name;
	GElf_Sym	 sym;
	Elf_Data	*data;
	int		 elferr;

	s = &re->sl[symtab];
	if (s->type != SHT_SYMTAB && s->type != SHT_DYNSYM)
		return ("");
	(void) FUNC2();
	if ((data = FUNC3(s->scn, NULL)) == NULL) {
		elferr = FUNC2();
		if (elferr != 0)
			FUNC6("elf_getdata failed: %s", FUNC1(elferr));
		return ("");
	}
	if (FUNC5(data, i, &sym) != &sym)
		return ("");
	/* Return section name for STT_SECTION symbol. */
	if (FUNC0(sym.st_info) == STT_SECTION) {
		if (sym.st_shndx < re->shnum &&
		    re->sl[sym.st_shndx].name != NULL)
			return (re->sl[sym.st_shndx].name);
		return ("");
	}
	if (s->link >= re->shnum ||
	    (name = FUNC4(re->elf, s->link, sym.st_name)) == NULL)
		return ("");

	return (name);
}