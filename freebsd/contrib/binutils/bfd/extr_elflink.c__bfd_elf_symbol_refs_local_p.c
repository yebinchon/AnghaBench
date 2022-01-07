
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_link_hash_table {int dynobj; } ;
struct elf_link_hash_entry {int dynindx; int type; int other; scalar_t__ forced_local; int def_regular; } ;
struct elf_backend_data {int (* is_function_type ) (int ) ;} ;
struct bfd_link_info {scalar_t__ executable; } ;
typedef int bfd_boolean ;


 scalar_t__ ELF_COMMON_DEF_P (struct elf_link_hash_entry*) ;
 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 int FALSE ;
 scalar_t__ STV_DEFAULT ;
 scalar_t__ STV_PROTECTED ;
 scalar_t__ SYMBOLIC_BIND (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int TRUE ;
 struct elf_link_hash_table* elf_hash_table (struct bfd_link_info*) ;
 struct elf_backend_data* get_elf_backend_data (int ) ;
 int is_elf_hash_table (struct elf_link_hash_table*) ;
 int stub1 (int ) ;

bfd_boolean
_bfd_elf_symbol_refs_local_p (struct elf_link_hash_entry *h,
         struct bfd_link_info *info,
         bfd_boolean local_protected)
{
  const struct elf_backend_data *bed;
  struct elf_link_hash_table *hash_table;


  if (h == ((void*)0))
    return TRUE;



  if (ELF_COMMON_DEF_P (h))
                      ;


  else if (!h->def_regular)
    return FALSE;


  if (h->forced_local)
    return TRUE;


  if (h->dynindx == -1)
    return TRUE;




  if (info->executable || SYMBOLIC_BIND (info, h))
    return TRUE;



  if (ELF_ST_VISIBILITY (h->other) == STV_DEFAULT)
    return FALSE;


  if (ELF_ST_VISIBILITY (h->other) != STV_PROTECTED)
    return TRUE;

  hash_table = elf_hash_table (info);
  if (!is_elf_hash_table (hash_table))
    return TRUE;

  bed = get_elf_backend_data (hash_table->dynobj);


  if (!bed->is_function_type (h->type))
    return TRUE;




  return local_protected;
}
