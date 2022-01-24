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
typedef  size_t uintmax_t ;
struct elfdump {int flags; int /*<<< orphan*/  snl; int /*<<< orphan*/  elf; } ;
struct TYPE_4__ {int p_flags; scalar_t__ p_align; scalar_t__ p_memsz; scalar_t__ p_filesz; scalar_t__ p_paddr; scalar_t__ p_vaddr; scalar_t__ p_offset; int /*<<< orphan*/  p_type; } ;
typedef  TYPE_1__ GElf_Phdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int SOLARIS_FMT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct elfdump*,size_t) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,size_t,TYPE_1__*) ; 
 size_t* p_flags ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct elfdump *ed)
{
	GElf_Phdr	 ph;
	size_t		 phnum, i;
	int		 header;

	if (FUNC3(ed->elf, &phnum) == 0) {
		FUNC7("elf_getphnum failed: %s", FUNC2(-1));
		return;
	}
	header = 0;
	for (i = 0; i < phnum; i++) {
		if (FUNC6(ed->elf, i, &ph) != &ph) {
			FUNC7("elf_getphdr failed: %s", FUNC2(-1));
			continue;
		}
		if (!FUNC1(&ed->snl) &&
		    FUNC5(ed, FUNC4(ph.p_type)) == NULL)
			continue;
		if (ed->flags & SOLARIS_FMT) {
			FUNC0("\nProgram Header[%zu]:\n", i);
			FUNC0("    p_vaddr:      %#-14jx", (uintmax_t)ph.p_vaddr);
			FUNC0("  p_flags:    [ %s ]\n",
			    p_flags[ph.p_flags & 0x7]);
			FUNC0("    p_paddr:      %#-14jx", (uintmax_t)ph.p_paddr);
			FUNC0("  p_type:     [ %s ]\n",
			    FUNC4(ph.p_type));
			FUNC0("    p_filesz:     %#-14jx",
			    (uintmax_t)ph.p_filesz);
			FUNC0("  p_memsz:    %#jx\n", (uintmax_t)ph.p_memsz);
			FUNC0("    p_offset:     %#-14jx",
			    (uintmax_t)ph.p_offset);
			FUNC0("  p_align:    %#jx\n", (uintmax_t)ph.p_align);
		} else {
			if (!header) {
				FUNC0("\nprogram header:\n");
				header = 1;
			}
			FUNC0("\n");
			FUNC0("entry: %zu\n", i);
			FUNC0("\tp_type: %s\n", FUNC4(ph.p_type));
			FUNC0("\tp_offset: %ju\n", (uintmax_t)ph.p_offset);
			FUNC0("\tp_vaddr: %#jx\n", (uintmax_t)ph.p_vaddr);
			FUNC0("\tp_paddr: %#jx\n", (uintmax_t)ph.p_paddr);
			FUNC0("\tp_filesz: %ju\n", (uintmax_t)ph.p_filesz);
			FUNC0("\tp_memsz: %ju\n", (uintmax_t)ph.p_memsz);
			FUNC0("\tp_flags: %s\n", p_flags[ph.p_flags & 0x7]);
			FUNC0("\tp_align: %ju\n", (uintmax_t)ph.p_align);
		}
	}
}