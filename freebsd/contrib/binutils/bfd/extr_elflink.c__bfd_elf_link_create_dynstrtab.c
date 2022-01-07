
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_link_hash_table {int * dynstr; int * dynobj; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int * _bfd_elf_strtab_init () ;
 struct elf_link_hash_table* elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
_bfd_elf_link_create_dynstrtab (bfd *abfd, struct bfd_link_info *info)
{
  struct elf_link_hash_table *hash_table;

  hash_table = elf_hash_table (info);
  if (hash_table->dynobj == ((void*)0))
    hash_table->dynobj = abfd;

  if (hash_table->dynstr == ((void*)0))
    {
      hash_table->dynstr = _bfd_elf_strtab_init ();
      if (hash_table->dynstr == ((void*)0))
 return FALSE;
    }
  return TRUE;
}
