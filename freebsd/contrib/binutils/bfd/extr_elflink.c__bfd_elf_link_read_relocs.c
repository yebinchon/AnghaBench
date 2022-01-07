
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct elf_backend_data {TYPE_1__* s; } ;
typedef int bfd_size_type ;
typedef void bfd_byte ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_11__ {scalar_t__ reloc_count; } ;
typedef TYPE_2__ asection ;
struct TYPE_12__ {int sh_size; } ;
struct TYPE_13__ {void* relocs; TYPE_3__* rel_hdr2; TYPE_3__ rel_hdr; } ;
struct TYPE_10__ {int int_rels_per_ext_rel; } ;
typedef TYPE_3__ Elf_Internal_Shdr ;
typedef void Elf_Internal_Rela ;


 int NUM_SHDR_ENTRIES (TYPE_3__*) ;
 void* bfd_alloc (int *,int) ;
 void* bfd_malloc (int) ;
 int elf_link_read_relocs_from_section (int *,TYPE_2__*,TYPE_3__*,void*,void*) ;
 TYPE_4__* elf_section_data (TYPE_2__*) ;
 int free (void*) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;

Elf_Internal_Rela *
_bfd_elf_link_read_relocs (bfd *abfd,
      asection *o,
      void *external_relocs,
      Elf_Internal_Rela *internal_relocs,
      bfd_boolean keep_memory)
{
  Elf_Internal_Shdr *rel_hdr;
  void *alloc1 = ((void*)0);
  Elf_Internal_Rela *alloc2 = ((void*)0);
  const struct elf_backend_data *bed = get_elf_backend_data (abfd);

  if (elf_section_data (o)->relocs != ((void*)0))
    return elf_section_data (o)->relocs;

  if (o->reloc_count == 0)
    return ((void*)0);

  rel_hdr = &elf_section_data (o)->rel_hdr;

  if (internal_relocs == ((void*)0))
    {
      bfd_size_type size;

      size = o->reloc_count;
      size *= bed->s->int_rels_per_ext_rel * sizeof (Elf_Internal_Rela);
      if (keep_memory)
 internal_relocs = bfd_alloc (abfd, size);
      else
 internal_relocs = alloc2 = bfd_malloc (size);
      if (internal_relocs == ((void*)0))
 goto error_return;
    }

  if (external_relocs == ((void*)0))
    {
      bfd_size_type size = rel_hdr->sh_size;

      if (elf_section_data (o)->rel_hdr2)
 size += elf_section_data (o)->rel_hdr2->sh_size;
      alloc1 = bfd_malloc (size);
      if (alloc1 == ((void*)0))
 goto error_return;
      external_relocs = alloc1;
    }

  if (!elf_link_read_relocs_from_section (abfd, o, rel_hdr,
       external_relocs,
       internal_relocs))
    goto error_return;
  if (elf_section_data (o)->rel_hdr2
      && (!elf_link_read_relocs_from_section
   (abfd, o,
    elf_section_data (o)->rel_hdr2,
    ((bfd_byte *) external_relocs) + rel_hdr->sh_size,
    internal_relocs + (NUM_SHDR_ENTRIES (rel_hdr)
         * bed->s->int_rels_per_ext_rel))))
    goto error_return;


  if (keep_memory)
    elf_section_data (o)->relocs = internal_relocs;

  if (alloc1 != ((void*)0))
    free (alloc1);




  return internal_relocs;

 error_return:
  if (alloc1 != ((void*)0))
    free (alloc1);
  if (alloc2 != ((void*)0))
    free (alloc2);
  return ((void*)0);
}
