
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* value_expr_p ;
typedef TYPE_2__* temp_expr_table_p ;
struct TYPE_6__ {int partition_in_use; TYPE_1__** partition_dep_list; } ;
struct TYPE_5__ {int value; } ;


 int bitmap_clear_bit (int ,int) ;
 int finish_expr (TYPE_2__*,int ,int) ;

__attribute__((used)) static inline void
kill_expr (temp_expr_table_p tab, int partition, bool clear_bit)
{
  value_expr_p ptr;


  while ((ptr = tab->partition_dep_list[partition]) != ((void*)0))
    finish_expr (tab, ptr->value, 0);

  if (clear_bit)
    bitmap_clear_bit (tab->partition_in_use, partition);
}
