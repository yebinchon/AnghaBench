
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int file_ptr ;
typedef int bfd ;
struct TYPE_6__ {int next_file_pos; } ;
struct TYPE_5__ {scalar_t__ sh_type; int sh_offset; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 int TRUE ;
 int _bfd_elf_assign_file_position_for_section (TYPE_1__*,int ,int ) ;
 TYPE_1__** elf_elfsections (int *) ;
 unsigned int elf_numsections (int *) ;
 TYPE_2__* elf_tdata (int *) ;

void
_bfd_elf_assign_file_positions_for_relocs (bfd *abfd)
{
  file_ptr off;
  unsigned int i, num_sec;
  Elf_Internal_Shdr **shdrpp;

  off = elf_tdata (abfd)->next_file_pos;

  num_sec = elf_numsections (abfd);
  for (i = 1, shdrpp = elf_elfsections (abfd) + 1; i < num_sec; i++, shdrpp++)
    {
      Elf_Internal_Shdr *shdrp;

      shdrp = *shdrpp;
      if ((shdrp->sh_type == SHT_REL || shdrp->sh_type == SHT_RELA)
   && shdrp->sh_offset == -1)
 off = _bfd_elf_assign_file_position_for_section (shdrp, off, TRUE);
    }

  elf_tdata (abfd)->next_file_pos = off;
}
