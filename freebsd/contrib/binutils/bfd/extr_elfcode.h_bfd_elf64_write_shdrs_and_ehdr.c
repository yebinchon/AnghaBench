
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int x_ehdr ;
typedef int file_ptr ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_10__ {int e_shnum; int e_shstrndx; scalar_t__ e_shoff; } ;
struct TYPE_9__ {int sh_size; int sh_link; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;
typedef TYPE_2__ Elf_Internal_Ehdr ;
typedef int Elf_External_Shdr ;
typedef int Elf_External_Ehdr ;


 int FALSE ;
 int SEEK_SET ;
 int SHN_HIRESERVE ;
 int SHN_LORESERVE ;
 int TRUE ;
 int * bfd_alloc (int *,int) ;
 int bfd_bwrite (int *,int,int *) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 int elf_debug_file (TYPE_2__*) ;
 int elf_debug_section (unsigned int,TYPE_1__*) ;
 TYPE_2__* elf_elfheader (int *) ;
 TYPE_1__** elf_elfsections (int *) ;
 int elf_swap_ehdr_out (int *,TYPE_2__*,int *) ;
 int elf_swap_shdr_out (int *,TYPE_1__*,int *) ;

bfd_boolean
elf_write_shdrs_and_ehdr (bfd *abfd)
{
  Elf_External_Ehdr x_ehdr;
  Elf_Internal_Ehdr *i_ehdrp;
  Elf_External_Shdr *x_shdrp;
  Elf_Internal_Shdr **i_shdrp;
  unsigned int count;
  bfd_size_type amt;

  i_ehdrp = elf_elfheader (abfd);
  i_shdrp = elf_elfsections (abfd);






  elf_swap_ehdr_out (abfd, i_ehdrp, &x_ehdr);
  amt = sizeof (x_ehdr);
  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0
      || bfd_bwrite (&x_ehdr, amt, abfd) != amt)
    return FALSE;



  if (i_ehdrp->e_shnum >= SHN_LORESERVE)
    i_shdrp[0]->sh_size = i_ehdrp->e_shnum;
  if (i_ehdrp->e_shstrndx >= SHN_LORESERVE)
    i_shdrp[0]->sh_link = i_ehdrp->e_shstrndx;


  amt = i_ehdrp->e_shnum;
  amt *= sizeof (*x_shdrp);
  x_shdrp = bfd_alloc (abfd, amt);
  if (!x_shdrp)
    return FALSE;

  for (count = 0; count < i_ehdrp->e_shnum; i_shdrp++, count++)
    {



      elf_swap_shdr_out (abfd, *i_shdrp, x_shdrp + count);

      if (count == SHN_LORESERVE - 1)
 i_shdrp += SHN_HIRESERVE + 1 - SHN_LORESERVE;
    }
  if (bfd_seek (abfd, (file_ptr) i_ehdrp->e_shoff, SEEK_SET) != 0
      || bfd_bwrite (x_shdrp, amt, abfd) != amt)
    return FALSE;



  return TRUE;
}
