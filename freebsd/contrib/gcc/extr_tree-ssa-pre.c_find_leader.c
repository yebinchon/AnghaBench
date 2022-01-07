
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef TYPE_2__* value_set_node_t ;
typedef int * tree ;
struct TYPE_6__ {int * expr; struct TYPE_6__* next; } ;
struct TYPE_5__ {scalar_t__ length; TYPE_2__* head; } ;


 int * get_value_handle (int *) ;
 scalar_t__ is_gimple_min_invariant (int *) ;
 scalar_t__ value_exists_in_set_bitmap (TYPE_1__*,int *) ;

__attribute__((used)) static tree
find_leader (value_set_t set, tree val)
{
  value_set_node_t node;

  if (val == ((void*)0))
    return ((void*)0);


  if (is_gimple_min_invariant (val))
    return val;

  if (set->length == 0)
    return ((void*)0);

  if (value_exists_in_set_bitmap (set, val))
    {
      for (node = set->head;
    node;
    node = node->next)
 {
   if (get_value_handle (node->expr) == val)
     return node->expr;
 }
    }

  return ((void*)0);
}
