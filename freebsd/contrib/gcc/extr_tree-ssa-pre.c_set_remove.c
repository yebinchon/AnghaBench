
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef TYPE_2__* value_set_node_t ;
typedef scalar_t__ tree ;
struct TYPE_7__ {scalar_t__ expr; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__* tail; TYPE_2__* head; int length; } ;


 int get_value_handle (scalar_t__) ;
 int pool_free (int ,TYPE_2__*) ;
 int value_remove_from_set_bitmap (TYPE_1__*,int ) ;
 int value_set_node_pool ;

__attribute__((used)) static void
set_remove (value_set_t set, tree expr)
{
  value_set_node_t node, prev;



  value_remove_from_set_bitmap (set, get_value_handle (expr));
  set->length--;
  prev = ((void*)0);
  for (node = set->head;
       node != ((void*)0);
       prev = node, node = node->next)
    {
      if (node->expr == expr)
 {
   if (prev == ((void*)0))
     set->head = node->next;
   else
     prev->next= node->next;

   if (node == set->tail)
     set->tail = prev;
   pool_free (value_set_node_pool, node);
   return;
 }
    }
}
