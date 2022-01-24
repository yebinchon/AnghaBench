#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_10__ {unsigned int e_shstrndx; } ;
struct TYPE_9__ {unsigned int sh_name; } ;
struct TYPE_8__ {unsigned int sh_link; } ;
struct TYPE_7__ {unsigned int st_name; size_t st_shndx; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ Elf_Internal_Sym ;
typedef  TYPE_2__ Elf_Internal_Shdr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SHN_HIRESERVE ; 
 size_t SHN_LORESERVE ; 
 scalar_t__ STT_SECTION ; 
 char* FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__** FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

const char *
FUNC6 (bfd *abfd,
		  Elf_Internal_Shdr *symtab_hdr,
		  Elf_Internal_Sym *isym,
		  asection *sym_sec)
{
  const char *name;
  unsigned int iname = isym->st_name;
  unsigned int shindex = symtab_hdr->sh_link;

  if (iname == 0 && FUNC0 (isym->st_info) == STT_SECTION
      /* Check for a bogus st_shndx to avoid crashing.  */
      && isym->st_shndx < FUNC5 (abfd)
      && !(isym->st_shndx >= SHN_LORESERVE && isym->st_shndx <= SHN_HIRESERVE))
    {
      iname = FUNC4 (abfd)[isym->st_shndx]->sh_name;
      shindex = FUNC3 (abfd)->e_shstrndx;
    }

  name = FUNC1 (abfd, shindex, iname);
  if (name == NULL)
    name = "(null)";
  else if (sym_sec && *name == '\0')
    name = FUNC2 (abfd, sym_sec);

  return name;
}