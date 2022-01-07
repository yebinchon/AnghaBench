
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_qset {int in_hw_list; int in_sw_list; int list_node; } ;
struct whc {int periodic_removed_list; } ;


 int list_move (int *,int *) ;

__attribute__((used)) static void pzl_qset_remove(struct whc *whc, struct whc_qset *qset)
{
 list_move(&qset->list_node, &whc->periodic_removed_list);
 qset->in_hw_list = 0;
 qset->in_sw_list = 0;
}
