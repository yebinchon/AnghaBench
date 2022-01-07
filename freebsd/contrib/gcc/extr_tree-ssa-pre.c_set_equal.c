
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef TYPE_2__* value_set_node_t ;
struct TYPE_7__ {int expr; struct TYPE_7__* next; } ;
struct TYPE_6__ {scalar_t__ length; TYPE_2__* head; } ;


 int get_value_handle (int ) ;
 int set_contains_value (TYPE_1__*,int ) ;

__attribute__((used)) static bool
set_equal (value_set_t a, value_set_t b)
{
  value_set_node_t node;

  if (a->length != b->length)
    return 0;
  for (node = a->head;
       node;
       node = node->next)
    {
      if (!set_contains_value (b, get_value_handle (node->expr)))
 return 0;
    }
  return 1;
}
