#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ r_offset; int /*<<< orphan*/  r_info; } ;
struct TYPE_5__ {scalar_t__ st_value; } ;
typedef  TYPE_1__ GElf_Sym ;
typedef  TYPE_2__ GElf_Rel ;
typedef  int /*<<< orphan*/  Elf_Data ;
typedef  int /*<<< orphan*/  Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;

/* Variables and functions */
 int ELFDATA2MSB ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,scalar_t__*,int) ; 
 scalar_t__ FUNC4 (void*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,size_t,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(Dwarf_Debug dbg, void *buf, uint64_t bufsize,
    Elf_Data *rel_data, Elf_Data *symtab_data, int endian)
{
	Dwarf_Unsigned type;
	GElf_Rel rel;
	GElf_Sym sym;
	size_t symndx;
	uint64_t offset;
	uint64_t addend;
	int size, j;

	j = 0;
	while (FUNC7(rel_data, j++, &rel) != NULL) {
		symndx = FUNC0(rel.r_info);
		type = FUNC1(rel.r_info);

		if (FUNC8(symtab_data, symndx, &sym) == NULL)
			continue;

		size = FUNC2(dbg, type);
		if (size == 0)
			continue; /* Unknown or non-absolute relocation. */

		offset = rel.r_offset;
		if (offset + size >= bufsize)
			continue;

		if (endian == ELFDATA2MSB)
			addend = FUNC4(buf, &offset, size);
		else
			addend = FUNC3(buf, &offset, size);

		offset = rel.r_offset;
		if (endian == ELFDATA2MSB)
			FUNC6(buf, &offset, sym.st_value + addend,
			    size);
		else
			FUNC5(buf, &offset, sym.st_value + addend,
			    size);
	}
}