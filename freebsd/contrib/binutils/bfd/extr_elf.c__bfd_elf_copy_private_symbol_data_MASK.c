#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int st_shndx; } ;
struct TYPE_6__ {int /*<<< orphan*/  section; } ;
struct TYPE_8__ {TYPE_2__ internal_elf_sym; TYPE_1__ symbol; } ;
typedef  TYPE_3__ elf_symbol_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_9__ {unsigned int strtab_section; unsigned int shstrtab_section; unsigned int symtab_shndx_section; } ;

/* Variables and functions */
 unsigned int MAP_DYNSYMTAB ; 
 unsigned int MAP_ONESYMTAB ; 
 unsigned int MAP_SHSTRTAB ; 
 unsigned int MAP_STRTAB ; 
 unsigned int MAP_SYM_SHNDX ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC6 (bfd *ibfd,
				   asymbol *isymarg,
				   bfd *obfd,
				   asymbol *osymarg)
{
  elf_symbol_type *isym, *osym;

  if (FUNC0 (ibfd) != bfd_target_elf_flavour
      || FUNC0 (obfd) != bfd_target_elf_flavour)
    return TRUE;

  isym = FUNC4 (ibfd, isymarg);
  osym = FUNC4 (obfd, osymarg);

  if (isym != NULL
      && osym != NULL
      && FUNC1 (isym->symbol.section))
    {
      unsigned int shndx;

      shndx = isym->internal_elf_sym.st_shndx;
      if (shndx == FUNC3 (ibfd))
	shndx = MAP_ONESYMTAB;
      else if (shndx == FUNC2 (ibfd))
	shndx = MAP_DYNSYMTAB;
      else if (shndx == FUNC5 (ibfd)->strtab_section)
	shndx = MAP_STRTAB;
      else if (shndx == FUNC5 (ibfd)->shstrtab_section)
	shndx = MAP_SHSTRTAB;
      else if (shndx == FUNC5 (ibfd)->symtab_shndx_section)
	shndx = MAP_SYM_SHNDX;
      osym->internal_elf_sym.st_shndx = shndx;
    }

  return TRUE;
}