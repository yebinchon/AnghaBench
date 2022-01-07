
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct observer_list {struct observer_list* next; TYPE_1__* observer; } ;
struct TYPE_2__ {int data; int (* notify ) (int ,void const*) ;} ;


 int stub1 (int ,void const*) ;

__attribute__((used)) static void
generic_observer_notify (struct observer_list *subject, const void *args)
{
  struct observer_list *current_node = subject;

  while (current_node != ((void*)0))
    {
      (*current_node->observer->notify) (current_node->observer->data, args);
      current_node = current_node->next;
    }
}
