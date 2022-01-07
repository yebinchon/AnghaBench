
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_section_already_linked_hash_entry {int dummy; } ;
typedef int bfd_boolean ;


 int _bfd_section_already_linked_table ;
 int already_linked_newfunc ;
 int bfd_hash_table_init_n (int *,int ,int,int) ;

bfd_boolean
bfd_section_already_linked_table_init (void)
{
  return bfd_hash_table_init_n (&_bfd_section_already_linked_table,
    already_linked_newfunc,
    sizeof (struct bfd_section_already_linked_hash_entry),
    42);
}
