
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lkb {int lkb_astqueue; } ;


 int ast_queue_lock ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dlm_del_ast(struct dlm_lkb *lkb)
{
 spin_lock(&ast_queue_lock);
 if (!list_empty(&lkb->lkb_astqueue))
  list_del_init(&lkb->lkb_astqueue);
 spin_unlock(&ast_queue_lock);
}
