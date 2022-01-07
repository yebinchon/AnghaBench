
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_member {int list; } ;
struct dlm_ls {int ls_num_nodes; int ls_nodes_gone; } ;


 int list_move (int *,int *) ;

__attribute__((used)) static void dlm_remove_member(struct dlm_ls *ls, struct dlm_member *memb)
{
 list_move(&memb->list, &ls->ls_nodes_gone);
 ls->ls_num_nodes--;
}
