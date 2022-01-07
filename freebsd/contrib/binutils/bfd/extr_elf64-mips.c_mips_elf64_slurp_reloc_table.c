
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ sh_offset; } ;
struct bfd_elf_section_data {TYPE_2__* rel_hdr2; TYPE_2__ this_hdr; TYPE_2__ rel_hdr; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_8__ {int flags; scalar_t__ reloc_count; scalar_t__ rel_filepos; scalar_t__ size; int * relocation; } ;
typedef TYPE_1__ asection ;
typedef int arelent ;
typedef TYPE_2__ Elf_Internal_Shdr ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int NUM_SHDR_ENTRIES (TYPE_2__*) ;
 int SEC_RELOC ;
 int TRUE ;
 int * bfd_alloc (int *,int) ;
 struct bfd_elf_section_data* elf_section_data (TYPE_1__*) ;
 int mips_elf64_slurp_one_reloc_table (int *,TYPE_1__*,TYPE_2__*,int,int *,int **,int ) ;

__attribute__((used)) static bfd_boolean
mips_elf64_slurp_reloc_table (bfd *abfd, asection *asect,
         asymbol **symbols, bfd_boolean dynamic)
{
  struct bfd_elf_section_data * const d = elf_section_data (asect);
  Elf_Internal_Shdr *rel_hdr;
  Elf_Internal_Shdr *rel_hdr2;
  bfd_size_type reloc_count;
  bfd_size_type reloc_count2;
  arelent *relents;
  bfd_size_type amt;

  if (asect->relocation != ((void*)0))
    return TRUE;

  if (! dynamic)
    {
      if ((asect->flags & SEC_RELOC) == 0
   || asect->reloc_count == 0)
 return TRUE;

      rel_hdr = &d->rel_hdr;
      reloc_count = NUM_SHDR_ENTRIES (rel_hdr);
      rel_hdr2 = d->rel_hdr2;
      reloc_count2 = (rel_hdr2 ? NUM_SHDR_ENTRIES (rel_hdr2) : 0);

      BFD_ASSERT (asect->reloc_count == reloc_count + reloc_count2);
      BFD_ASSERT (asect->rel_filepos == rel_hdr->sh_offset
    || (rel_hdr2 && asect->rel_filepos == rel_hdr2->sh_offset));

    }
  else
    {




      if (asect->size == 0)
 return TRUE;

      rel_hdr = &d->this_hdr;
      reloc_count = NUM_SHDR_ENTRIES (rel_hdr);
      rel_hdr2 = ((void*)0);
      reloc_count2 = 0;
    }


  amt = (reloc_count + reloc_count2) * 3 * sizeof (arelent);
  relents = bfd_alloc (abfd, amt);
  if (relents == ((void*)0))
    return FALSE;


  asect->reloc_count = 0;

  if (! mips_elf64_slurp_one_reloc_table (abfd, asect,
       rel_hdr, reloc_count,
       relents,
       symbols, dynamic))
    return FALSE;
  if (d->rel_hdr2 != ((void*)0))
    {
      if (! mips_elf64_slurp_one_reloc_table (abfd, asect,
           rel_hdr2, reloc_count2,
           relents + reloc_count * 3,
           symbols, dynamic))
 return FALSE;
    }

  asect->relocation = relents;
  return TRUE;
}
