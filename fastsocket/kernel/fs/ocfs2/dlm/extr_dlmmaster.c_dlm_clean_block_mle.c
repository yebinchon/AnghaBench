
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_master_list_entry {scalar_t__ type; int wq; int spinlock; int woken; int maybe_map; } ;
struct dlm_ctxt {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ DLM_MLE_BLOCK ;
 int O2NM_MAX_NODES ;
 int __dlm_mle_detach_hb_events (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int __dlm_put_mle (struct dlm_master_list_entry*) ;
 int atomic_set (int *,int) ;
 int find_next_bit (int ,int ,int ) ;
 int mlog (int ,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void dlm_clean_block_mle(struct dlm_ctxt *dlm,
    struct dlm_master_list_entry *mle, u8 dead_node)
{
 int bit;

 BUG_ON(mle->type != DLM_MLE_BLOCK);

 spin_lock(&mle->spinlock);
 bit = find_next_bit(mle->maybe_map, O2NM_MAX_NODES, 0);
 if (bit != dead_node) {
  mlog(0, "mle found, but dead node %u would not have been "
       "master\n", dead_node);
  spin_unlock(&mle->spinlock);
 } else {




  mlog(0, "node %u was expected master\n", dead_node);
  atomic_set(&mle->woken, 1);
  spin_unlock(&mle->spinlock);
  wake_up(&mle->wq);


  __dlm_mle_detach_hb_events(dlm, mle);
  __dlm_put_mle(mle);
 }
}
