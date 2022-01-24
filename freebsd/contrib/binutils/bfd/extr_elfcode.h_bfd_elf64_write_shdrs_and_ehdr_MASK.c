#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x_ehdr ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_10__ {int e_shnum; int e_shstrndx; scalar_t__ e_shoff; } ;
struct TYPE_9__ {int sh_size; int sh_link; } ;
typedef  TYPE_1__ Elf_Internal_Shdr ;
typedef  TYPE_2__ Elf_Internal_Ehdr ;
typedef  int /*<<< orphan*/  Elf_External_Shdr ;
typedef  int /*<<< orphan*/  Elf_External_Ehdr ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SHN_HIRESERVE ; 
 int SHN_LORESERVE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,TYPE_1__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

bfd_boolean
FUNC9 (bfd *abfd)
{
  Elf_External_Ehdr x_ehdr;	/* Elf file header, external form */
  Elf_Internal_Ehdr *i_ehdrp;	/* Elf file header, internal form */
  Elf_External_Shdr *x_shdrp;	/* Section header table, external form */
  Elf_Internal_Shdr **i_shdrp;	/* Section header table, internal form */
  unsigned int count;
  bfd_size_type amt;

  i_ehdrp = FUNC5 (abfd);
  i_shdrp = FUNC6 (abfd);

  /* swap the header before spitting it out...  */

#if DEBUG & 1
  elf_debug_file (i_ehdrp);
#endif
  FUNC7 (abfd, i_ehdrp, &x_ehdr);
  amt = sizeof (x_ehdr);
  if (FUNC2 (abfd, (file_ptr) 0, SEEK_SET) != 0
      || FUNC1 (&x_ehdr, amt, abfd) != amt)
    return FALSE;

  /* Some fields in the first section header handle overflow of ehdr
     fields.  */
  if (i_ehdrp->e_shnum >= SHN_LORESERVE)
    i_shdrp[0]->sh_size = i_ehdrp->e_shnum;
  if (i_ehdrp->e_shstrndx >= SHN_LORESERVE)
    i_shdrp[0]->sh_link = i_ehdrp->e_shstrndx;

  /* at this point we've concocted all the ELF sections...  */
  amt = i_ehdrp->e_shnum;
  amt *= sizeof (*x_shdrp);
  x_shdrp = FUNC0 (abfd, amt);
  if (!x_shdrp)
    return FALSE;

  for (count = 0; count < i_ehdrp->e_shnum; i_shdrp++, count++)
    {
#if DEBUG & 2
      elf_debug_section (count, *i_shdrp);
#endif
      FUNC8 (abfd, *i_shdrp, x_shdrp + count);

      if (count == SHN_LORESERVE - 1)
	i_shdrp += SHN_HIRESERVE + 1 - SHN_LORESERVE;
    }
  if (FUNC2 (abfd, (file_ptr) i_ehdrp->e_shoff, SEEK_SET) != 0
      || FUNC1 (x_shdrp, amt, abfd) != amt)
    return FALSE;

  /* need to dump the string table too...  */

  return TRUE;
}