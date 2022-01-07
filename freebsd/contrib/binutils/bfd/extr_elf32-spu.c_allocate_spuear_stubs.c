
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stubarr {int err; int count; int stub_hash_table; } ;
struct spu_stub_hash_entry {int target_off; int * target_section; } ;
struct TYPE_6__ {int value; int * section; } ;
struct TYPE_7__ {TYPE_2__ def; } ;
struct TYPE_5__ {int string; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ u; TYPE_1__ root; } ;
struct elf_link_hash_entry {TYPE_4__ root; scalar_t__ def_regular; } ;
typedef int bfd_boolean ;
typedef int Elf_Internal_Rela ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bfd_hash_lookup (int ,char*,int ,int ) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 int free (char*) ;
 char* spu_stub_name (int *,struct elf_link_hash_entry*,int *) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static bfd_boolean
allocate_spuear_stubs (struct elf_link_hash_entry *h, void *inf)
{


  if ((h->root.type == bfd_link_hash_defined
       || h->root.type == bfd_link_hash_defweak)
      && h->def_regular
      && strncmp (h->root.root.string, "_SPUEAR_", 8) == 0)
    {
      struct stubarr *stubs = inf;
      static Elf_Internal_Rela zero_rel;
      char *stub_name = spu_stub_name (h->root.u.def.section, h, &zero_rel);
      struct spu_stub_hash_entry *sh;

      if (stub_name == ((void*)0))
 {
   stubs->err = 1;
   return FALSE;
 }

      sh = (struct spu_stub_hash_entry *)
 bfd_hash_lookup (stubs->stub_hash_table, stub_name, TRUE, FALSE);
      if (sh == ((void*)0))
 {
   free (stub_name);
   return FALSE;
 }


      if (sh->target_section != ((void*)0))
 {
   free (stub_name);
   return TRUE;
 }

      sh->target_section = h->root.u.def.section;
      sh->target_off = h->root.u.def.value;
      stubs->count += 1;
    }

  return TRUE;
}
