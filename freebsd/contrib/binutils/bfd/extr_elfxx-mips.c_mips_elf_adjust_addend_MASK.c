#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int /*<<< orphan*/  relocatable; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_12__ {scalar_t__ output_offset; } ;
typedef  TYPE_1__ asection ;
struct TYPE_14__ {int /*<<< orphan*/  r_addend; int /*<<< orphan*/  r_info; } ;
struct TYPE_13__ {int /*<<< orphan*/  st_info; } ;
typedef  TYPE_2__ Elf_Internal_Sym ;
typedef  TYPE_3__ Elf_Internal_Rela ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 unsigned int R_MIPS16_GPREL ; 
 unsigned int R_MIPS_GPREL16 ; 
 unsigned int R_MIPS_GPREL32 ; 
 unsigned int R_MIPS_LITERAL ; 
 scalar_t__ STT_SECTION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__**,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (bfd *output_bfd, struct bfd_link_info *info,
			bfd *input_bfd, Elf_Internal_Sym *local_syms,
			asection **local_sections, Elf_Internal_Rela *rel)
{
  unsigned int r_type, r_symndx;
  Elf_Internal_Sym *sym;
  asection *sec;

  if (FUNC5 (input_bfd, rel, local_sections, FALSE))
    {
      r_type = FUNC1 (output_bfd, rel->r_info);
      if (r_type == R_MIPS16_GPREL
	  || r_type == R_MIPS_GPREL16
	  || r_type == R_MIPS_GPREL32
	  || r_type == R_MIPS_LITERAL)
	{
	  rel->r_addend += FUNC4 (input_bfd);
	  rel->r_addend -= FUNC4 (output_bfd);
	}

      r_symndx = FUNC0 (output_bfd, rel->r_info);
      sym = local_syms + r_symndx;

      /* Adjust REL's addend to account for section merging.  */
      if (!info->relocatable)
	{
	  sec = local_sections[r_symndx];
	  FUNC3 (output_bfd, sym, &sec, rel);
	}

      /* This would normally be done by the rela_normal code in elflink.c.  */
      if (FUNC2 (sym->st_info) == STT_SECTION)
	rel->r_addend += local_sections[r_symndx]->output_offset;
    }
}