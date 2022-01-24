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
struct module {int dummy; } ;
struct elf_info {TYPE_2__* sechdrs; TYPE_1__* hdr; } ;
struct TYPE_7__ {scalar_t__ sh_type; } ;
struct TYPE_6__ {int e_shnum; } ;
typedef  TYPE_2__ Elf_Shdr ;

/* Variables and functions */
 scalar_t__ SHT_REL ; 
 scalar_t__ SHT_RELA ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct elf_info*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct elf_info*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct elf_info*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct module *mod, const char *modname,
                          struct elf_info *elf)
{
	int i;
	Elf_Shdr *sechdrs = elf->sechdrs;

	/* Walk through all sections */
	for (i = 0; i < elf->hdr->e_shnum; i++) {
		FUNC0(modname, elf, &elf->sechdrs[i]);
		/* We want to process only relocation sections and not .init */
		if (sechdrs[i].sh_type == SHT_RELA)
			FUNC2(modname, elf, &elf->sechdrs[i]);
		else if (sechdrs[i].sh_type == SHT_REL)
			FUNC1(modname, elf, &elf->sechdrs[i]);
	}
}