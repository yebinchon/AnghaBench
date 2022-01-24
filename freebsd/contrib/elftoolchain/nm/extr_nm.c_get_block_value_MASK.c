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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {int bl_len; scalar_t__ bl_data; } ;
struct TYPE_6__ {scalar_t__* e_ident; } ;
typedef  TYPE_1__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;
typedef  TYPE_2__ Dwarf_Block ;

/* Variables and functions */
 scalar_t__ DW_DLV_OK ; 
 size_t EI_DATA ; 
 scalar_t__ ELFDATA2LSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC9(Dwarf_Debug dbg, Dwarf_Block *block)
{
	Elf *elf;
	GElf_Ehdr eh;
	Dwarf_Error de;

	if (FUNC3(dbg, &elf, &de) != DW_DLV_OK) {
		FUNC8("dwarf_get_elf failed: %s", FUNC2(de));
		return (0);
	}

	if (FUNC5(elf, &eh) != &eh) {
		FUNC8("gelf_getehdr failed: %s", FUNC4(-1));
		return (0);
	}

	if (block->bl_len == 5) {
		if (eh.e_ident[EI_DATA] == ELFDATA2LSB)
			return (FUNC6((uint8_t *) block->bl_data + 1));
		else
			return (FUNC0((uint8_t *) block->bl_data + 1));
	} else if (block->bl_len == 9) {
		if (eh.e_ident[EI_DATA] == ELFDATA2LSB)
			return (FUNC7((uint8_t *) block->bl_data + 1));
		else
			return (FUNC1((uint8_t *) block->bl_data + 1));
	}

	return (0);
}