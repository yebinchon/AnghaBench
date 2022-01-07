
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long value; struct TYPE_4__* next; } ;
typedef TYPE_1__ apuinfo_list ;


 TYPE_1__* bfd_malloc (int) ;
 TYPE_1__* head ;

__attribute__((used)) static void
apuinfo_list_add (unsigned long value)
{
  apuinfo_list *entry = head;

  while (entry != ((void*)0))
    {
      if (entry->value == value)
 return;
      entry = entry->next;
    }

  entry = bfd_malloc (sizeof (* entry));
  if (entry == ((void*)0))
    return;

  entry->value = value;
  entry->next = head;
  head = entry;
}
