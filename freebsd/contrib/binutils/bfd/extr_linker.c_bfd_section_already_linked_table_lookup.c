
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_section_already_linked_hash_entry {int dummy; } ;


 int FALSE ;
 int TRUE ;
 int _bfd_section_already_linked_table ;
 scalar_t__ bfd_hash_lookup (int *,char const*,int ,int ) ;

struct bfd_section_already_linked_hash_entry *
bfd_section_already_linked_table_lookup (const char *name)
{
  return ((struct bfd_section_already_linked_hash_entry *)
   bfd_hash_lookup (&_bfd_section_already_linked_table, name,
      TRUE, FALSE));
}
