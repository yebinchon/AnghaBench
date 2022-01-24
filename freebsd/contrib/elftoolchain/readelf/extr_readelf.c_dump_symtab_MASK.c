#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint32_t ;
typedef  size_t uint16_t ;
struct section {scalar_t__ link; char* name; scalar_t__ type; int /*<<< orphan*/  scn; } ;
struct TYPE_9__ {int /*<<< orphan*/ * e_ident; int /*<<< orphan*/  e_machine; } ;
struct readelf {scalar_t__ shnum; int* vs; size_t ver_sz; TYPE_2__* ver; int /*<<< orphan*/  elf; TYPE_1__ ehdr; struct section* sl; } ;
struct TYPE_12__ {scalar_t__ d_size; } ;
struct TYPE_11__ {int /*<<< orphan*/  st_name; int /*<<< orphan*/  st_shndx; int /*<<< orphan*/  st_other; int /*<<< orphan*/  st_info; scalar_t__ st_size; scalar_t__ st_value; } ;
struct TYPE_10__ {char* name; scalar_t__ type; } ;
typedef  TYPE_3__ GElf_Sym ;
typedef  TYPE_4__ Elf_Data ;

/* Variables and functions */
 size_t EI_OSABI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHT_DYNSYM ; 
 int VERSYM_HIDDEN ; 
 size_t VERSYM_VERSION ; 
 size_t FUNC3 (int) ; 
 int FUNC4 () ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (TYPE_4__*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct section*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,size_t) ; 

__attribute__((used)) static void
FUNC16(struct readelf *re, int i)
{
	struct section *s;
	Elf_Data *d;
	GElf_Sym sym;
	const char *name;
	uint32_t stab;
	int elferr, j, len;
	uint16_t vs;

	s = &re->sl[i];
	if (s->link >= re->shnum)
		return;
	stab = s->link;
	(void) FUNC4();
	if ((d = FUNC5(s->scn, NULL)) == NULL) {
		elferr = FUNC4();
		if (elferr != 0)
			FUNC15("elf_getdata failed: %s", FUNC3(elferr));
		return;
	}
	if (d->d_size <= 0)
		return;
	if (!FUNC8(s, &len))
		return;
	FUNC9("Symbol table (%s)", s->name);
	FUNC9(" contains %d entries:\n", len);
	FUNC9("%7s%9s%14s%5s%8s%6s%9s%5s\n", "Num:", "Value", "Size", "Type",
	    "Bind", "Vis", "Ndx", "Name");

	for (j = 0; j < len; j++) {
		if (FUNC7(d, j, &sym) != &sym) {
			FUNC15("gelf_getsym failed: %s", FUNC3(-1));
			continue;
		}
		FUNC9("%6d:", j);
		FUNC9(" %16.16jx", (uintmax_t) sym.st_value);
		FUNC9(" %5ju", (uintmax_t) sym.st_size);
		FUNC9(" %-7s", FUNC13(re->ehdr.e_machine,
		    re->ehdr.e_ident[EI_OSABI], FUNC1(sym.st_info)));
		FUNC9(" %-6s", FUNC11(FUNC0(sym.st_info)));
		FUNC9(" %-8s", FUNC14(FUNC2(sym.st_other)));
		FUNC9(" %3s", FUNC12(sym.st_shndx));
		if ((name = FUNC6(re->elf, stab, sym.st_name)) != NULL)
			FUNC9(" %s", name);
		/* Append symbol version string for SHT_DYNSYM symbol table. */
		if (s->type == SHT_DYNSYM && re->ver != NULL &&
		    re->vs != NULL && re->vs[j] > 1) {
			vs = re->vs[j] & VERSYM_VERSION;
			if (vs >= re->ver_sz || re->ver[vs].name == NULL) {
				FUNC15("invalid versym version index %u", vs);
				break;
			}
			if (re->vs[j] & VERSYM_HIDDEN || re->ver[vs].type == 0)
				FUNC9("@%s (%d)", re->ver[vs].name, vs);
			else
				FUNC9("@@%s (%d)", re->ver[vs].name, vs);
		}
		FUNC10('\n');
	}

}