
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* varinfo_t ;
struct TYPE_4__ {scalar_t__ offset; struct TYPE_4__* next; } ;



__attribute__((used)) static void
insert_into_field_list_sorted (varinfo_t base, varinfo_t field)
{
  varinfo_t prev = base;
  varinfo_t curr = base->next;

  if (curr == ((void*)0))
    {
      prev->next = field;
      field->next = ((void*)0);
    }
  else
    {
      while (curr)
 {
   if (field->offset <= curr->offset)
     break;
   prev = curr;
   curr = curr->next;
 }
      field->next = prev->next;
      prev->next = field;
    }
}
