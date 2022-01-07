
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct bfd_link_info {int shared; } ;
struct TYPE_8__ {scalar_t__ link; } ;
struct TYPE_9__ {TYPE_1__ i; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_13__ {TYPE_3__ root; scalar_t__ needs_plt; } ;
struct alpha_elf_link_hash_entry {struct alpha_elf_got_entry* got_entries; TYPE_7__ root; } ;
struct alpha_elf_got_entry {scalar_t__ use_count; int reloc_type; struct alpha_elf_got_entry* next; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_11__ {int size; } ;
typedef TYPE_4__ asection ;
struct TYPE_12__ {int * dynobj; } ;
typedef int Elf64_External_Rela ;


 int BFD_ASSERT (int ) ;
 int TRUE ;
 scalar_t__ alpha_dynamic_entries_for_reloc (int ,int ,int ) ;
 int alpha_elf_dynamic_symbol_p (TYPE_7__*,struct bfd_link_info*) ;
 TYPE_4__* bfd_get_section_by_name (int *,char*) ;
 scalar_t__ bfd_link_hash_undefweak ;
 scalar_t__ bfd_link_hash_warning ;
 TYPE_5__* elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
elf64_alpha_size_rela_got_1 (struct alpha_elf_link_hash_entry *h,
        struct bfd_link_info *info)
{
  bfd_boolean dynamic;
  struct alpha_elf_got_entry *gotent;
  unsigned long entries;

  if (h->root.root.type == bfd_link_hash_warning)
    h = (struct alpha_elf_link_hash_entry *) h->root.root.u.i.link;



  if (h->root.needs_plt)
    return TRUE;




  dynamic = alpha_elf_dynamic_symbol_p (&h->root, info);




  if (h->root.root.type == bfd_link_hash_undefweak && !dynamic)
    return TRUE;

  entries = 0;
  for (gotent = h->got_entries; gotent ; gotent = gotent->next)
    if (gotent->use_count > 0)
      entries += alpha_dynamic_entries_for_reloc (gotent->reloc_type,
        dynamic, info->shared);

  if (entries > 0)
    {
      bfd *dynobj = elf_hash_table(info)->dynobj;
      asection *srel = bfd_get_section_by_name (dynobj, ".rela.got");
      BFD_ASSERT (srel != ((void*)0));
      srel->size += sizeof (Elf64_External_Rela) * entries;
    }

  return TRUE;
}
