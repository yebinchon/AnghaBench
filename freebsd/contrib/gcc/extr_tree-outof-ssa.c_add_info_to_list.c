
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* value_expr_p ;
typedef int temp_expr_table_p ;
struct TYPE_6__ {struct TYPE_6__* next; int value; } ;


 scalar_t__ find_value_in_list (TYPE_1__*,int ,int *) ;
 int free_value_expr (int ,TYPE_1__*) ;

__attribute__((used)) static inline void
add_info_to_list (temp_expr_table_p tab, value_expr_p *list, value_expr_p info)
{
  if (find_value_in_list (*list, info->value, ((void*)0)))
    free_value_expr (tab, info);
  else
    {
      info->next = *list;
      *list = info;
    }
}
