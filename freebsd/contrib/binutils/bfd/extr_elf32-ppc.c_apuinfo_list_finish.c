
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ apuinfo_list ;


 int free (TYPE_1__*) ;
 TYPE_1__* head ;

__attribute__((used)) static void
apuinfo_list_finish (void)
{
  apuinfo_list *entry;

  for (entry = head; entry;)
    {
      apuinfo_list *next = entry->next;
      free (entry);
      entry = next;
    }

  head = ((void*)0);
}
