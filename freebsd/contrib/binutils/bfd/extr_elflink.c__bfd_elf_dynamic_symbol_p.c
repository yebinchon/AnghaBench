
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct elf_link_hash_table {int dynobj; } ;
struct TYPE_4__ {scalar_t__ link; } ;
struct TYPE_5__ {TYPE_1__ i; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {int dynindx; int def_regular; int type; int other; scalar_t__ forced_local; TYPE_3__ root; } ;
struct elf_backend_data {int (* is_function_type ) (int ) ;} ;
struct bfd_link_info {scalar_t__ executable; } ;
typedef int bfd_boolean ;


 int ELF_ST_VISIBILITY (int ) ;
 int FALSE ;



 scalar_t__ SYMBOLIC_BIND (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int TRUE ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 struct elf_link_hash_table* elf_hash_table (struct bfd_link_info*) ;
 struct elf_backend_data* get_elf_backend_data (int ) ;
 int is_elf_hash_table (struct elf_link_hash_table*) ;
 int stub1 (int ) ;

bfd_boolean
_bfd_elf_dynamic_symbol_p (struct elf_link_hash_entry *h,
      struct bfd_link_info *info,
      bfd_boolean ignore_protected)
{
  bfd_boolean binding_stays_local_p;
  const struct elf_backend_data *bed;
  struct elf_link_hash_table *hash_table;

  if (h == ((void*)0))
    return FALSE;

  while (h->root.type == bfd_link_hash_indirect
  || h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;


  if (h->dynindx == -1)
    return FALSE;
  if (h->forced_local)
    return FALSE;



  binding_stays_local_p = info->executable || SYMBOLIC_BIND (info, h);

  switch (ELF_ST_VISIBILITY (h->other))
    {
    case 129:
    case 130:
      return FALSE;

    case 128:
      hash_table = elf_hash_table (info);
      if (!is_elf_hash_table (hash_table))
 return FALSE;

      bed = get_elf_backend_data (hash_table->dynobj);




      if (!ignore_protected || !bed->is_function_type (h->type))
 binding_stays_local_p = TRUE;
      break;

    default:
      break;
    }


  if (!h->def_regular)
    return TRUE;



  return !binding_stays_local_p;
}
