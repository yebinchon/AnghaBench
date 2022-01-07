
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {TYPE_7__* weakdef; } ;
struct TYPE_10__ {int value; int section; } ;
struct TYPE_11__ {TYPE_1__ def; } ;
struct TYPE_12__ {TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_8__ u; TYPE_3__ root; void* needs_plt; } ;
struct bfd_link_info {int dummy; } ;
struct alpha_elf_link_hash_entry {int dummy; } ;
typedef void* bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_18__ {int * dynobj; } ;
struct TYPE_13__ {int value; int section; } ;
struct TYPE_14__ {TYPE_4__ def; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_5__ u; } ;
struct TYPE_16__ {TYPE_6__ root; } ;


 int BFD_ASSERT (int) ;
 void* FALSE ;
 void* TRUE ;
 scalar_t__ alpha_elf_dynamic_symbol_p (struct elf_link_hash_entry*,struct bfd_link_info*) ;
 int * bfd_get_section_by_name (int *,char*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 int elf64_alpha_create_dynamic_sections (int *,struct bfd_link_info*) ;
 scalar_t__ elf64_alpha_want_plt (struct alpha_elf_link_hash_entry*) ;
 TYPE_9__* elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
elf64_alpha_adjust_dynamic_symbol (struct bfd_link_info *info,
       struct elf_link_hash_entry *h)
{
  bfd *dynobj;
  asection *s;
  struct alpha_elf_link_hash_entry *ah;

  dynobj = elf_hash_table(info)->dynobj;
  ah = (struct alpha_elf_link_hash_entry *)h;






  if (alpha_elf_dynamic_symbol_p (h, info) && elf64_alpha_want_plt (ah))
    {
      h->needs_plt = TRUE;

      s = bfd_get_section_by_name(dynobj, ".plt");
      if (!s && !elf64_alpha_create_dynamic_sections (dynobj, info))
 return FALSE;





      return TRUE;
    }
  else
    h->needs_plt = FALSE;




  if (h->u.weakdef != ((void*)0))
    {
      BFD_ASSERT (h->u.weakdef->root.type == bfd_link_hash_defined
    || h->u.weakdef->root.type == bfd_link_hash_defweak);
      h->root.u.def.section = h->u.weakdef->root.u.def.section;
      h->root.u.def.value = h->u.weakdef->root.u.def.value;
      return TRUE;
    }






  return TRUE;
}
