
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* value_expr_p ;
typedef int tree ;
typedef TYPE_2__* temp_expr_table_p ;
struct TYPE_10__ {int partition_in_use; int * version_info; TYPE_1__** partition_dep_list; int map; TYPE_1__* pending_dependence; int replaceable; } ;
struct TYPE_9__ {int value; struct TYPE_9__* next; } ;


 int NO_PARTITION ;
 int SSA_NAME_VERSION (int ) ;
 int add_info_to_list (TYPE_2__*,TYPE_1__**,TYPE_1__*) ;
 int add_value_to_list (TYPE_2__*,TYPE_1__**,int) ;
 scalar_t__ bitmap_bit_p (int ,int) ;
 int bitmap_set_bit (int ,int) ;
 int gcc_assert (int) ;
 int var_to_partition (int ,int ) ;

__attribute__((used)) static void
add_dependence (temp_expr_table_p tab, int version, tree var)
{
  int i, x;
  value_expr_p info;

  i = SSA_NAME_VERSION (var);
  if (bitmap_bit_p (tab->replaceable, i))
    {


      while ((info = tab->pending_dependence))
        {
   tab->pending_dependence = info->next;


   x = info->value;
   info->value = version;
   add_info_to_list (tab, &(tab->partition_dep_list[x]), info);
          add_value_to_list (tab,
        (value_expr_p *)&(tab->version_info[version]), x);
   bitmap_set_bit (tab->partition_in_use, x);
 }
    }
  else
    {
      i = var_to_partition (tab->map, var);
      gcc_assert (i != NO_PARTITION);
      add_value_to_list (tab, &(tab->partition_dep_list[i]), version);
      add_value_to_list (tab,
    (value_expr_p *)&(tab->version_info[version]), i);
      bitmap_set_bit (tab->partition_in_use, i);
    }
}
