
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long value; struct TYPE_3__* next; } ;
typedef TYPE_1__ apuinfo_list ;


 TYPE_1__* head ;

__attribute__((used)) static inline unsigned long
apuinfo_list_element (unsigned long number)
{
  apuinfo_list * entry;

  for (entry = head;
       entry && number --;
       entry = entry->next)
    ;

  return entry ? entry->value : 0;
}
