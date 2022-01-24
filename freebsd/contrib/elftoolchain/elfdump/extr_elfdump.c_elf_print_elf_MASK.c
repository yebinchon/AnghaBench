#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct elfdump {int options; int /*<<< orphan*/  elf; int /*<<< orphan*/  ec; int /*<<< orphan*/  ehdr; } ;

/* Variables and functions */
 int ED_CHECKSUM ; 
 int ED_DYN ; 
 int ED_EHDR ; 
 int ED_GOT ; 
 int ED_HASH ; 
 int ED_INTERP ; 
 int ED_NOTE ; 
 int ED_PHDR ; 
 int ED_REL ; 
 int ED_SHDR ; 
 int ED_SYMTAB ; 
 int ED_SYMVER ; 
 int /*<<< orphan*/  ELFCLASSNONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC2 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC3 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC4 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC5 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC6 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC7 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC8 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC9 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC10 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC11 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC12 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC16 (struct elfdump*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(struct elfdump *ed)
{

	if (FUNC14(ed->elf, &ed->ehdr) == NULL) {
		FUNC17("gelf_getehdr failed: %s", FUNC0(-1));
		return;
	}
	if ((ed->ec = FUNC13(ed->elf)) == ELFCLASSNONE) {
		FUNC17("gelf_getclass failed: %s", FUNC0(-1));
		return;
	}

	if (ed->options & (ED_SHDR | ED_DYN | ED_REL | ED_GOT | ED_SYMTAB |
	    ED_SYMVER | ED_NOTE | ED_HASH))
		FUNC15(ed);

	if (ed->options & ED_EHDR)
		FUNC3(ed);
	if (ed->options & ED_PHDR)
		FUNC8(ed);
	if (ed->options & ED_INTERP)
		FUNC6(ed);
	if (ed->options & ED_SHDR)
		FUNC10(ed);
	if (ed->options & ED_DYN)
		FUNC2(ed);
	if (ed->options & ED_REL)
		FUNC9(ed);
	if (ed->options & ED_GOT)
		FUNC4(ed);
	if (ed->options & ED_SYMTAB)
		FUNC11(ed);
	if (ed->options & ED_SYMVER)
		FUNC12(ed);
	if (ed->options & ED_NOTE)
		FUNC7(ed);
	if (ed->options & ED_HASH)
		FUNC5(ed);
	if (ed->options & ED_CHECKSUM)
		FUNC1(ed);

	FUNC16(ed);
}