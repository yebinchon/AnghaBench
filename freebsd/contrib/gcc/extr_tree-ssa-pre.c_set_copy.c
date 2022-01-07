
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef TYPE_2__* value_set_node_t ;
struct TYPE_7__ {int expr; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__* head; } ;


 int insert_into_set (TYPE_1__*,int ) ;

__attribute__((used)) static void
set_copy (value_set_t dest, value_set_t orig)
{
  value_set_node_t node;

  if (!orig || !orig->head)
    return;

  for (node = orig->head;
       node;
       node = node->next)
    {
      insert_into_set (dest, node->expr);
    }
}
