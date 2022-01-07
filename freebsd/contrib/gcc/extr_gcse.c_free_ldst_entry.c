
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_expr {int stores; int loads; } ;


 int free (struct ls_expr*) ;
 int free_INSN_LIST_list (int *) ;

__attribute__((used)) static void
free_ldst_entry (struct ls_expr * ptr)
{
  free_INSN_LIST_list (& ptr->loads);
  free_INSN_LIST_list (& ptr->stores);

  free (ptr);
}
