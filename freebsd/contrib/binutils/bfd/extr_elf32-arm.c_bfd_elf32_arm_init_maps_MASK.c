#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int flags; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_15__ {unsigned int sh_info; int /*<<< orphan*/  sh_link; } ;
struct TYPE_16__ {TYPE_3__ symtab_hdr; } ;
struct TYPE_14__ {int /*<<< orphan*/  st_value; int /*<<< orphan*/  st_name; int /*<<< orphan*/  st_info; int /*<<< orphan*/  st_shndx; } ;
typedef  TYPE_2__ Elf_Internal_Sym ;
typedef  TYPE_3__ Elf_Internal_Shdr ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_ARM_SPECIAL_SYM_TYPE_MAP ; 
 int DYNAMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STB_LOCAL ; 
 TYPE_2__* FUNC1 (TYPE_1__*,TYPE_3__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (TYPE_1__*) ; 

void
FUNC8 (bfd *abfd)
{
  Elf_Internal_Sym *isymbuf;
  Elf_Internal_Shdr *hdr;
  unsigned int i, localsyms;

  if (FUNC3 (abfd) != bfd_target_elf_flavour || FUNC7 (abfd) == NULL)
    return;

  if ((abfd->flags & DYNAMIC) != 0)
    return;

  hdr = &FUNC7 (abfd)->symtab_hdr;
  localsyms = hdr->sh_info;

  /* Obtain a buffer full of symbols for this BFD. The hdr->sh_info field
     should contain the number of local symbols, which should come before any
     global symbols.  Mapping symbols are always local.  */
  isymbuf = FUNC1 (abfd, hdr, localsyms, 0, NULL, NULL,
				  NULL);

  /* No internal symbols read?  Skip this BFD.  */
  if (isymbuf == NULL)
    return;

  for (i = 0; i < localsyms; i++)
    {
      Elf_Internal_Sym *isym = &isymbuf[i];
      asection *sec = FUNC5 (abfd, isym->st_shndx);
      const char *name;
      
      if (sec != NULL
          && FUNC0 (isym->st_info) == STB_LOCAL)
        {
          name = FUNC2 (abfd,
            hdr->sh_link, isym->st_name);
          
          if (FUNC4 (name,
					      BFD_ARM_SPECIAL_SYM_TYPE_MAP))
            FUNC6 (sec, name[1], isym->st_value);
        }
    }
}