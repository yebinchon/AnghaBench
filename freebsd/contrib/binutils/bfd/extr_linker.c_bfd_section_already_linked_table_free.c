
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _bfd_section_already_linked_table ;
 int bfd_hash_table_free (int *) ;

void
bfd_section_already_linked_table_free (void)
{
  bfd_hash_table_free (&_bfd_section_already_linked_table);
}
