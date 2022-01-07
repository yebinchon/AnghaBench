
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long entry; unsigned long tag; int children; struct TYPE_5__* next; int * last_attr; int * first_attr; } ;
typedef TYPE_1__ abbrev_entry ;


 TYPE_1__* first_abbrev ;
 TYPE_1__* last_abbrev ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static void
add_abbrev (unsigned long number, unsigned long tag, int children)
{
  abbrev_entry *entry;

  entry = malloc (sizeof (*entry));

  if (entry == ((void*)0))

    return;

  entry->entry = number;
  entry->tag = tag;
  entry->children = children;
  entry->first_attr = ((void*)0);
  entry->last_attr = ((void*)0);
  entry->next = ((void*)0);

  if (first_abbrev == ((void*)0))
    first_abbrev = entry;
  else
    last_abbrev->next = entry;

  last_abbrev = entry;
}
