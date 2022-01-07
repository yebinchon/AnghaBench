
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_section_already_linked_hash_entry {struct bfd_section_already_linked* entry; } ;
struct bfd_section_already_linked {struct bfd_section_already_linked* next; int * sec; } ;
typedef int asection ;


 int _bfd_section_already_linked_table ;
 struct bfd_section_already_linked* bfd_hash_allocate (int *,int) ;

void
bfd_section_already_linked_table_insert
  (struct bfd_section_already_linked_hash_entry *already_linked_list,
   asection *sec)
{
  struct bfd_section_already_linked *l;



  l = bfd_hash_allocate (&_bfd_section_already_linked_table, sizeof *l);
  l->sec = sec;
  l->next = already_linked_list->entry;
  already_linked_list->entry = l;
}
