
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct dlm_lkb {int lkb_flags; int lkb_astqueue; int lkb_ref; } ;


 int DLM_IFL_USER ;
 int WAKE_ASTS ;
 int ast_queue ;
 int ast_queue_lock ;
 scalar_t__ ast_seq_count ;
 int astd_task ;
 int astd_wakeflags ;
 int dlm_add_lkb_callback (struct dlm_lkb*,int ,int,int,int ,scalar_t__) ;
 int dlm_user_add_ast (struct dlm_lkb*,int ,int,int,int ,scalar_t__) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_process (int ) ;

void dlm_add_ast(struct dlm_lkb *lkb, uint32_t flags, int mode, int status,
   uint32_t sbflags)
{
 uint64_t seq;
 int rv;

 spin_lock(&ast_queue_lock);

 seq = ++ast_seq_count;

 if (lkb->lkb_flags & DLM_IFL_USER) {
  spin_unlock(&ast_queue_lock);
  dlm_user_add_ast(lkb, flags, mode, status, sbflags, seq);
  return;
 }

 rv = dlm_add_lkb_callback(lkb, flags, mode, status, sbflags, seq);
 if (rv < 0) {
  spin_unlock(&ast_queue_lock);
  return;
 }

 if (list_empty(&lkb->lkb_astqueue)) {
  kref_get(&lkb->lkb_ref);
  list_add_tail(&lkb->lkb_astqueue, &ast_queue);
 }
 spin_unlock(&ast_queue_lock);

 set_bit(WAKE_ASTS, &astd_wakeflags);
 wake_up_process(astd_task);
}
