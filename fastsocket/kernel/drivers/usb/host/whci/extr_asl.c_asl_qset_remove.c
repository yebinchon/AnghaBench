
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct whc_qset {int in_sw_list; int in_hw_list; int qset_dma; TYPE_1__ qh; int list_node; } ;
struct whc {int async_list; int async_removed_list; } ;


 scalar_t__ list_empty (int *) ;
 int list_move (int *,int *) ;
 int qset_get_next_prev (struct whc*,struct whc_qset*,struct whc_qset**,struct whc_qset**) ;
 int whc_qset_set_link_ptr (int *,int ) ;

__attribute__((used)) static void asl_qset_remove(struct whc *whc, struct whc_qset *qset)
{
 struct whc_qset *prev, *next;

 qset_get_next_prev(whc, qset, &next, &prev);

 list_move(&qset->list_node, &whc->async_removed_list);
 qset->in_sw_list = 0;





 if (list_empty(&whc->async_list))
  return;


 whc_qset_set_link_ptr(&prev->qh.link, next->qset_dma);
 qset->in_hw_list = 0;
}
