
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int def_regular; } ;
struct ppc_elf_link_hash_entry {TYPE_4__* linker_section_pointer; TYPE_1__ elf; } ;
struct elf_link_hash_entry {int dummy; } ;
struct TYPE_14__ {char* name; TYPE_2__* section; } ;
typedef TYPE_3__ elf_linker_section_t ;
struct TYPE_15__ {int offset; int addend; } ;
typedef TYPE_4__ elf_linker_section_pointers_t ;
typedef int bfd_vma ;
typedef int bfd ;
struct TYPE_16__ {int r_addend; int r_info; } ;
struct TYPE_13__ {int output_offset; scalar_t__ contents; int owner; } ;
typedef TYPE_5__ Elf_Internal_Rela ;


 int BFD_ASSERT (int ) ;
 unsigned long ELF32_R_SYM (int ) ;
 int bfd_put_32 (int ,int,scalar_t__) ;
 TYPE_4__* elf_find_pointer_linker_section (TYPE_4__*,int ,TYPE_3__*) ;
 TYPE_4__** elf_local_ptr_offsets (int *) ;
 int fprintf (int ,char*,char*,long,long) ;
 int stderr ;

__attribute__((used)) static bfd_vma
elf_finish_pointer_linker_section (bfd *input_bfd,
       elf_linker_section_t *lsect,
       struct elf_link_hash_entry *h,
       bfd_vma relocation,
       const Elf_Internal_Rela *rel)
{
  elf_linker_section_pointers_t *linker_section_ptr;

  BFD_ASSERT (lsect != ((void*)0));

  if (h != ((void*)0))
    {

      struct ppc_elf_link_hash_entry *eh;

      eh = (struct ppc_elf_link_hash_entry *) h;
      BFD_ASSERT (eh->elf.def_regular);
      linker_section_ptr = eh->linker_section_pointer;
    }
  else
    {

      unsigned long r_symndx = ELF32_R_SYM (rel->r_info);

      BFD_ASSERT (elf_local_ptr_offsets (input_bfd) != ((void*)0));
      linker_section_ptr = elf_local_ptr_offsets (input_bfd)[r_symndx];
    }

  linker_section_ptr = elf_find_pointer_linker_section (linker_section_ptr,
       rel->r_addend,
       lsect);
  BFD_ASSERT (linker_section_ptr != ((void*)0));



  if ((linker_section_ptr->offset & 1) == 0)
    {
      bfd_put_32 (lsect->section->owner,
    relocation + linker_section_ptr->addend,
    lsect->section->contents + linker_section_ptr->offset);
      linker_section_ptr->offset += 1;
    }

  relocation = (lsect->section->output_offset
  + linker_section_ptr->offset - 1
  - 0x8000);
  return relocation - linker_section_ptr->addend;
}
