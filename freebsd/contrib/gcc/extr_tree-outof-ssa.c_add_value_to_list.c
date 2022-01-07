
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* value_expr_p ;
typedef int temp_expr_table_p ;
struct TYPE_5__ {int value; struct TYPE_5__* next; } ;


 int find_value_in_list (TYPE_1__*,int,int *) ;
 TYPE_1__* new_value_expr (int ) ;

__attribute__((used)) static inline void
add_value_to_list (temp_expr_table_p tab, value_expr_p *list, int value)
{
  value_expr_p info;

  if (!find_value_in_list (*list, value, ((void*)0)))
    {
      info = new_value_expr (tab);
      info->value = value;
      info->next = *list;
      *list = info;
    }
}
