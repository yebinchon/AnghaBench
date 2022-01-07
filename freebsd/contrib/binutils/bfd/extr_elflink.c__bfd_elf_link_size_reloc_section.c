
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct elf_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_7__ {int reloc_count; } ;
typedef TYPE_1__ asection ;
struct TYPE_8__ {int sh_size; int sh_entsize; int * contents; } ;
struct TYPE_9__ {int rel_count; int rel_count2; struct elf_link_hash_entry** rel_hashes; TYPE_2__ rel_hdr; } ;
typedef TYPE_2__ Elf_Internal_Shdr ;


 int FALSE ;
 int TRUE ;
 int * bfd_zalloc (int *,int) ;
 struct elf_link_hash_entry** bfd_zmalloc (int) ;
 TYPE_3__* elf_section_data (TYPE_1__*) ;

bfd_boolean
_bfd_elf_link_size_reloc_section (bfd *abfd,
      Elf_Internal_Shdr *rel_hdr,
      asection *o)
{
  bfd_size_type reloc_count;
  bfd_size_type num_rel_hashes;


  if (rel_hdr == &elf_section_data (o)->rel_hdr)
    reloc_count = elf_section_data (o)->rel_count;
  else
    reloc_count = elf_section_data (o)->rel_count2;

  num_rel_hashes = o->reloc_count;
  if (num_rel_hashes < reloc_count)
    num_rel_hashes = reloc_count;


  rel_hdr->sh_size = rel_hdr->sh_entsize * reloc_count;





  rel_hdr->contents = bfd_zalloc (abfd, rel_hdr->sh_size);
  if (rel_hdr->contents == ((void*)0) && rel_hdr->sh_size != 0)
    return FALSE;



  if (elf_section_data (o)->rel_hashes == ((void*)0)
      && num_rel_hashes)
    {
      struct elf_link_hash_entry **p;

      p = bfd_zmalloc (num_rel_hashes * sizeof (struct elf_link_hash_entry *));
      if (p == ((void*)0))
 return FALSE;

      elf_section_data (o)->rel_hashes = p;
    }

  return TRUE;
}
