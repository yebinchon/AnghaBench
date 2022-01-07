
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfd_link_hash_table {struct bfd_link_hash_entry* undefs_tail; struct bfd_link_hash_entry* undefs; } ;
struct TYPE_3__ {struct bfd_link_hash_entry* next; } ;
struct TYPE_4__ {TYPE_1__ undef; } ;
struct bfd_link_hash_entry {TYPE_2__ u; } ;


 int BFD_ASSERT (int ) ;

void
bfd_link_add_undef (struct bfd_link_hash_table *table,
      struct bfd_link_hash_entry *h)
{
  BFD_ASSERT (h->u.undef.next == ((void*)0));
  if (table->undefs_tail != ((void*)0))
    table->undefs_tail->u.undef.next = h;
  if (table->undefs == ((void*)0))
    table->undefs = h;
  table->undefs_tail = h;
}
