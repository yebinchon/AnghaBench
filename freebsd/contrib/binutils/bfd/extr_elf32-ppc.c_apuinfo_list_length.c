
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ apuinfo_list ;


 TYPE_1__* head ;

__attribute__((used)) static unsigned
apuinfo_list_length (void)
{
  apuinfo_list *entry;
  unsigned long count;

  for (entry = head, count = 0;
       entry;
       entry = entry->next)
    ++ count;

  return count;
}
