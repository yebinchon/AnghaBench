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
struct elf_info {TYPE_2__* symtab_start; TYPE_1__* hdr; } ;
struct TYPE_12__ {unsigned int r_offset; unsigned int r_info; unsigned int r_addend; } ;
struct TYPE_11__ {int sh_offset; int sh_size; } ;
struct TYPE_10__ {scalar_t__ st_shndx; } ;
struct TYPE_9__ {scalar_t__ e_machine; } ;
typedef  TYPE_2__ Elf_Sym ;
typedef  TYPE_3__ Elf_Shdr ;
typedef  TYPE_4__ Elf_Rela ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 scalar_t__ EM_MIPS ; 
 scalar_t__ SHN_LORESERVE ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct elf_info*,TYPE_4__*,TYPE_2__*,char const*) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (struct elf_info*,TYPE_3__*) ; 
 int /*<<< orphan*/  section_white_list ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(const char *modname, struct elf_info *elf,
                         Elf_Shdr *sechdr)
{
	Elf_Sym  *sym;
	Elf_Rela *rela;
	Elf_Rela r;
	unsigned int r_sym;
	const char *fromsec;

	Elf_Rela *start = (void *)elf->hdr + sechdr->sh_offset;
	Elf_Rela *stop  = (void *)start + sechdr->sh_size;

	fromsec = FUNC7(elf, sechdr);
	fromsec += FUNC8(".rela");
	/* if from section (name) is know good then skip it */
	if (FUNC6(fromsec, section_white_list))
		return;

	for (rela = start; rela < stop; rela++) {
		r.r_offset = FUNC4(rela->r_offset);
#if KERNEL_ELFCLASS == ELFCLASS64
		if (elf->hdr->e_machine == EM_MIPS) {
			unsigned int r_typ;
			r_sym = FUNC0(rela->r_info);
			r_sym = FUNC4(r_sym);
			r_typ = FUNC1(rela->r_info);
			r.r_info = FUNC2(r_sym, r_typ);
		} else {
			r.r_info = FUNC4(rela->r_info);
			r_sym = FUNC3(r.r_info);
		}
#else
		r.r_info = TO_NATIVE(rela->r_info);
		r_sym = ELF_R_SYM(r.r_info);
#endif
		r.r_addend = FUNC4(rela->r_addend);
		sym = elf->symtab_start + r_sym;
		/* Skip special sections */
		if (sym->st_shndx >= SHN_LORESERVE)
			continue;
		FUNC5(modname, elf, &r, sym, fromsec);
	}
}