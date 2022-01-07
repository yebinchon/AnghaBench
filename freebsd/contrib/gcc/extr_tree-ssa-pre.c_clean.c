
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef TYPE_2__* value_set_node_t ;
typedef int basic_block ;
struct TYPE_7__ {int expr; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__* head; } ;


 int set_remove (TYPE_1__*,int ) ;
 int valid_in_set (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
clean (value_set_t set, basic_block block)
{
  value_set_node_t node;
  value_set_node_t next;
  node = set->head;
  while (node)
    {
      next = node->next;
      if (!valid_in_set (set, node->expr, block))
 set_remove (set, node->expr);
      node = next;
    }
}
