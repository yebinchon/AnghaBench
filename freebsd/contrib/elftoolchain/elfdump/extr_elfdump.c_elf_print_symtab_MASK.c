#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char const* uintmax_t ;
typedef  char const* uint16_t ;
struct section {char const* name; scalar_t__ sz; int /*<<< orphan*/  link; int /*<<< orphan*/  scn; } ;
struct TYPE_8__ {int /*<<< orphan*/  e_machine; } ;
struct elfdump {int flags; scalar_t__ ec; TYPE_1__ ehdr; struct section* sl; } ;
typedef  int /*<<< orphan*/  idx ;
struct TYPE_10__ {scalar_t__ d_size; } ;
struct TYPE_9__ {size_t st_other; scalar_t__ st_shndx; int /*<<< orphan*/  st_info; scalar_t__ st_size; scalar_t__ st_value; int /*<<< orphan*/  st_name; } ;
typedef  TYPE_2__ GElf_Sym ;
typedef  TYPE_3__ Elf_Data ;

/* Variables and functions */
 scalar_t__ ELFCLASS32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int SOLARIS_FMT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (TYPE_3__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct section*,int*) ; 
 char* FUNC9 (struct elfdump*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct elfdump*,int,char const***,int*) ; 
 char const* FUNC11 (struct elfdump*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 char const* FUNC14 (int /*<<< orphan*/ ) ; 
 char const** st_others ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 

__attribute__((used)) static void
FUNC18(struct elfdump *ed, int i)
{
	struct section	*s;
	const char	*name;
	uint16_t	*vs;
	char		 idx[13];
	Elf_Data	*data;
	GElf_Sym	 sym;
	int		 len, j, elferr, nvs;

	s = &ed->sl[i];
	if (ed->flags & SOLARIS_FMT)
		FUNC2("\nSymbol Table Section:  %s\n", s->name);
	else
		FUNC2("\nsymbol table (%s):\n", s->name);
	(void) FUNC5();
	if ((data = FUNC6(s->scn, NULL)) == NULL) {
		elferr = FUNC5();
		if (elferr != 0)
			FUNC17("elf_getdata failed: %s", FUNC4(elferr));
		return;
	}
	vs = NULL;
	nvs = 0;
	FUNC3(data->d_size == s->sz);
	if (!FUNC8(s, &len))
		return;
	if (ed->flags & SOLARIS_FMT) {
		if (ed->ec == ELFCLASS32)
			FUNC2("     index    value       ");
		else
			FUNC2("     index        value           ");
		FUNC2("size     type bind oth ver shndx       name\n");
		FUNC10(ed, i, &vs, &nvs);
		if (vs != NULL && nvs != len) {
			FUNC17("#symbol not equal to #versym");
			vs = NULL;
		}
	}
	for (j = 0; j < len; j++) {
		if (FUNC7(data, j, &sym) != &sym) {
			FUNC17("gelf_getsym failed: %s", FUNC4(-1));
			continue;
		}
		name = FUNC9(ed, s->link, sym.st_name);
		if (ed->flags & SOLARIS_FMT) {
			FUNC12(idx, sizeof(idx), "[%d]", j);
			if (ed->ec == ELFCLASS32)
				FUNC2("%10s  ", idx);
			else
				FUNC2("%10s      ", idx);
			FUNC2("0x%8.8jx ", (uintmax_t)sym.st_value);
			if (ed->ec == ELFCLASS32)
				FUNC2("0x%8.8jx  ", (uintmax_t)sym.st_size);
			else
				FUNC2("0x%12.12jx  ", (uintmax_t)sym.st_size);
			FUNC2("%s ", FUNC16(FUNC1(sym.st_info)));
			FUNC2("%s  ", FUNC14(FUNC0(sym.st_info)));
			FUNC2("%c  ", st_others[sym.st_other]);
			FUNC2("%3u ", (vs == NULL ? 0 : vs[j]));
			FUNC2("%-11.11s ", FUNC11(ed, sym.st_shndx));
			FUNC2("%s\n", name);
		} else {
			FUNC2("\nentry: %d\n", j);
			FUNC2("\tst_name: %s\n", name);
			FUNC2("\tst_value: %#jx\n", (uintmax_t)sym.st_value);
			FUNC2("\tst_size: %ju\n", (uintmax_t)sym.st_size);
			FUNC2("\tst_info: %s %s\n",
			    FUNC15(ed->ehdr.e_machine,
			    FUNC1(sym.st_info)),
			    FUNC13(FUNC0(sym.st_info)));
			FUNC2("\tst_shndx: %ju\n", (uintmax_t)sym.st_shndx);
		}
	}
}