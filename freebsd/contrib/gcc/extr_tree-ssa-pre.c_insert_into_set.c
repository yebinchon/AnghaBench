
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef TYPE_2__* value_set_node_t ;
typedef int tree ;
struct TYPE_6__ {struct TYPE_6__* next; int expr; } ;
struct TYPE_5__ {TYPE_2__* tail; TYPE_2__* head; int length; scalar_t__ indexed; } ;


 int gcc_assert (int ) ;
 int get_value_handle (int ) ;
 scalar_t__ is_gimple_min_invariant (int ) ;
 int pool_alloc (int ) ;
 int value_insert_into_set_bitmap (TYPE_1__*,int ) ;
 int value_set_node_pool ;

__attribute__((used)) static void
insert_into_set (value_set_t set, tree expr)
{
  value_set_node_t newnode = (value_set_node_t) pool_alloc (value_set_node_pool);
  tree val = get_value_handle (expr);
  gcc_assert (val);

  if (is_gimple_min_invariant (val))
    return;




  if (set->indexed)
    value_insert_into_set_bitmap (set, val);

  newnode->next = ((void*)0);
  newnode->expr = expr;
  set->length ++;
  if (set->head == ((void*)0))
    {
      set->head = set->tail = newnode;
    }
  else
    {
      set->tail->next = newnode;
      set->tail = newnode;
    }
}
