
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* value_expr_p ;
typedef TYPE_2__* temp_expr_table_p ;
struct value_expr_d {int dummy; } ;
struct TYPE_6__ {TYPE_1__* free_list; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 scalar_t__ xmalloc (int) ;

__attribute__((used)) static inline value_expr_p
new_value_expr (temp_expr_table_p table)
{
  value_expr_p p;
  if (table->free_list)
    {
      p = table->free_list;
      table->free_list = p->next;
    }
  else
    p = (value_expr_p) xmalloc (sizeof (struct value_expr_d));

  return p;
}
