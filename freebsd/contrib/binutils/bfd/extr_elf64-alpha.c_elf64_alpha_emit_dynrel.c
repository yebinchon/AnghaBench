
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
typedef int outrel ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_10__ {int reloc_count; int size; int * contents; scalar_t__ output_offset; TYPE_1__* output_section; } ;
typedef TYPE_2__ asection ;
struct TYPE_11__ {int r_addend; scalar_t__ r_offset; int r_info; } ;
struct TYPE_9__ {scalar_t__ vma; } ;
typedef TYPE_3__ Elf_Internal_Rela ;
typedef int Elf64_External_Rela ;


 int BFD_ASSERT (int) ;
 int ELF64_R_INFO (long,long) ;
 int _bfd_elf_section_offset (int *,struct bfd_link_info*,TYPE_2__*,int) ;
 int bfd_elf64_swap_reloca_out (int *,TYPE_3__*,int *) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void
elf64_alpha_emit_dynrel (bfd *abfd, struct bfd_link_info *info,
    asection *sec, asection *srel, bfd_vma offset,
    long dynindx, long rtype, bfd_vma addend)
{
  Elf_Internal_Rela outrel;
  bfd_byte *loc;

  BFD_ASSERT (srel != ((void*)0));

  outrel.r_info = ELF64_R_INFO (dynindx, rtype);
  outrel.r_addend = addend;

  offset = _bfd_elf_section_offset (abfd, info, sec, offset);
  if ((offset | 1) != (bfd_vma) -1)
    outrel.r_offset = sec->output_section->vma + sec->output_offset + offset;
  else
    memset (&outrel, 0, sizeof (outrel));

  loc = srel->contents;
  loc += srel->reloc_count++ * sizeof (Elf64_External_Rela);
  bfd_elf64_swap_reloca_out (abfd, &outrel, loc);
  BFD_ASSERT (sizeof (Elf64_External_Rela) * srel->reloc_count <= srel->size);
}
