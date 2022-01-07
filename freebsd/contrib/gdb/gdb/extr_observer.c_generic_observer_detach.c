
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct observer_list {struct observer_list* next; struct observer const* observer; } ;
struct observer {int dummy; } ;


 int warning (char*) ;
 int xfree_observer_list_node (struct observer_list*) ;

__attribute__((used)) static void
generic_observer_detach (struct observer_list **subject,
    const struct observer *observer)
{
  struct observer_list *previous_node = ((void*)0);
  struct observer_list *current_node = *subject;

  while (current_node != ((void*)0))
    {
      if (current_node->observer == observer)
 {
   if (previous_node != ((void*)0))
     previous_node->next = current_node->next;
   else
     *subject = current_node->next;
   xfree_observer_list_node (current_node);
   return;
 }
      previous_node = current_node;
      current_node = current_node->next;
    }



  warning ("Failed to detach observer");
}
