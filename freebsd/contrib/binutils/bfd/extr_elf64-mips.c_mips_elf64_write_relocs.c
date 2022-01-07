
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_14__ {int flags; unsigned int reloc_count; TYPE_3__** orelocation; } ;
typedef TYPE_2__ asection ;
struct TYPE_15__ {scalar_t__ address; TYPE_1__** sym_ptr_ptr; } ;
typedef TYPE_3__ arelent ;
struct TYPE_16__ {int sh_entsize; } ;
struct TYPE_13__ {scalar_t__ value; int section; } ;
struct TYPE_12__ {TYPE_4__ rel_hdr; } ;
typedef TYPE_4__ Elf_Internal_Shdr ;
typedef int Elf64_Mips_External_Rela ;
typedef int Elf64_Mips_External_Rel ;


 int BFD_ASSERT (int ) ;
 int SEC_RELOC ;
 int bfd_is_abs_section (int ) ;
 TYPE_10__* elf_section_data (TYPE_2__*) ;
 int mips_elf64_write_rel (int *,TYPE_2__*,TYPE_4__*,int*,void*) ;
 int mips_elf64_write_rela (int *,TYPE_2__*,TYPE_4__*,int*,void*) ;

__attribute__((used)) static void
mips_elf64_write_relocs (bfd *abfd, asection *sec, void *data)
{
  bfd_boolean *failedp = data;
  int count;
  Elf_Internal_Shdr *rel_hdr;
  unsigned int idx;


  if (*failedp)
    return;

  if ((sec->flags & SEC_RELOC) == 0)
    return;





  if (sec->reloc_count == 0)
    return;



  count = 0;
  for (idx = 0; idx < sec->reloc_count; idx++)
    {
      bfd_vma addr;
      unsigned int i;

      ++count;

      addr = sec->orelocation[idx]->address;
      for (i = 0; i < 2; i++)
 {
   arelent *r;

   if (idx + 1 >= sec->reloc_count)
     break;
   r = sec->orelocation[idx + 1];
   if (r->address != addr
       || ! bfd_is_abs_section ((*r->sym_ptr_ptr)->section)
       || (*r->sym_ptr_ptr)->value != 0)
     break;



   ++idx;
 }
    }

  rel_hdr = &elf_section_data (sec)->rel_hdr;



  if (rel_hdr->sh_entsize == sizeof(Elf64_Mips_External_Rel))
    mips_elf64_write_rel (abfd, sec, rel_hdr, &count, data);
  else if (rel_hdr->sh_entsize == sizeof(Elf64_Mips_External_Rela))
    mips_elf64_write_rela (abfd, sec, rel_hdr, &count, data);
  else
    BFD_ASSERT (0);
}
