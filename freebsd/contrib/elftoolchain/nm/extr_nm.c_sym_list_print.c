
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct var_info_head {int dummy; } ;
struct sym_print_data {size_t list_num; } ;
struct sym_entry {int dummy; } ;
struct line_info_head {int dummy; } ;
struct func_info_head {int dummy; } ;
struct TYPE_2__ {int sort_reverse; } ;


 scalar_t__ CHECK_SYM_PRINT_DATA (struct sym_print_data*) ;
 int free (struct sym_entry*) ;
 TYPE_1__ nm_opts ;
 int sym_list_print_each (struct sym_entry*,struct sym_print_data*,struct func_info_head*,struct var_info_head*,struct line_info_head*) ;
 struct sym_entry* sym_list_sort (struct sym_print_data*) ;

__attribute__((used)) static void
sym_list_print(struct sym_print_data *p, struct func_info_head *func_info,
    struct var_info_head *var_info, struct line_info_head *line_info)
{
 struct sym_entry *e_v;
 size_t si;
 int i;

 if (p == ((void*)0) || CHECK_SYM_PRINT_DATA(p))
  return;
 if ((e_v = sym_list_sort(p)) == ((void*)0))
  return;
 if (nm_opts.sort_reverse == 0)
  for (si = 0; si != p->list_num; ++si)
   sym_list_print_each(&e_v[si], p, func_info, var_info,
       line_info);
 else
  for (i = p->list_num - 1; i != -1; --i)
   sym_list_print_each(&e_v[i], p, func_info, var_info,
       line_info);

 free(e_v);
}
