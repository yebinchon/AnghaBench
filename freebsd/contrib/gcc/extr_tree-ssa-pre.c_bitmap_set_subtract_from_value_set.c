
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
typedef TYPE_2__* value_set_node_t ;
typedef int bitmap_set_t ;
struct TYPE_8__ {int expr; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__* head; } ;


 int bitmap_set_contains (int ,int ) ;
 int insert_into_set (TYPE_1__*,int ) ;
 TYPE_1__* set_new (int) ;

__attribute__((used)) static value_set_t
bitmap_set_subtract_from_value_set (value_set_t a, bitmap_set_t b,
        bool indexed)
{
  value_set_t ret = set_new (indexed);
  value_set_node_t node;
  for (node = a->head;
       node;
       node = node->next)
    {
      if (!bitmap_set_contains (b, node->expr))
 insert_into_set (ret, node->expr);
    }
  return ret;
}
