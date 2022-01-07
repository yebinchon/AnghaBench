
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_nodes_gone; } ;


 int clear_memb_list (int *) ;

void dlm_clear_members_gone(struct dlm_ls *ls)
{
 clear_memb_list(&ls->ls_nodes_gone);
}
