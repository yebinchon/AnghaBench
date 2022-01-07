
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_expr {struct ls_expr* next; } ;


 int free_ldst_entry (struct ls_expr*) ;
 int htab_delete (int *) ;
 struct ls_expr* pre_ldst_mems ;
 int * pre_ldst_table ;

__attribute__((used)) static void
free_ldst_mems (void)
{
  if (pre_ldst_table)
    htab_delete (pre_ldst_table);
  pre_ldst_table = ((void*)0);

  while (pre_ldst_mems)
    {
      struct ls_expr * tmp = pre_ldst_mems;

      pre_ldst_mems = pre_ldst_mems->next;

      free_ldst_entry (tmp);
    }

  pre_ldst_mems = ((void*)0);
}
