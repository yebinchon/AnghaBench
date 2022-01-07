
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfd_link_hash_table {struct bfd_link_hash_entry* undefs_tail; struct bfd_link_hash_entry* undefs; } ;
struct TYPE_3__ {struct bfd_link_hash_entry* next; } ;
struct TYPE_4__ {TYPE_1__ undef; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_2__ u; } ;


 scalar_t__ bfd_link_hash_new ;
 scalar_t__ bfd_link_hash_undefweak ;

void
bfd_link_repair_undef_list (struct bfd_link_hash_table *table)
{
  struct bfd_link_hash_entry **pun;

  pun = &table->undefs;
  while (*pun != ((void*)0))
    {
      struct bfd_link_hash_entry *h = *pun;

      if (h->type == bfd_link_hash_new
   || h->type == bfd_link_hash_undefweak)
 {
   *pun = h->u.undef.next;
   h->u.undef.next = ((void*)0);
   if (h == table->undefs_tail)
     {
       if (pun == &table->undefs)
  table->undefs_tail = ((void*)0);
       else


  table->undefs_tail = (struct bfd_link_hash_entry *)
    ((char *) pun - ((char *) &h->u.undef.next - (char *) h));
       break;
     }
 }
      else
 pun = &h->u.undef.next;
    }
}
