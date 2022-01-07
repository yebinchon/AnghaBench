
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_quota_recovery {int dummy; } ;
struct ocfs2_la_recovery_item {int lri_slot; int lri_list; struct ocfs2_quota_recovery* lri_qrec; struct ocfs2_dinode* lri_tl_dinode; struct ocfs2_dinode* lri_la_dinode; } ;
struct ocfs2_journal {int j_lock; int j_recovery_work; int j_la_cleanups; } ;
struct ocfs2_dinode {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct ocfs2_dinode*) ;
 struct ocfs2_la_recovery_item* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mlog_errno (int ) ;
 int ocfs2_free_quota_recovery (struct ocfs2_quota_recovery*) ;
 int ocfs2_wq ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_queue_recovery_completion(struct ocfs2_journal *journal,
         int slot_num,
         struct ocfs2_dinode *la_dinode,
         struct ocfs2_dinode *tl_dinode,
         struct ocfs2_quota_recovery *qrec)
{
 struct ocfs2_la_recovery_item *item;

 item = kmalloc(sizeof(struct ocfs2_la_recovery_item), GFP_NOFS);
 if (!item) {



  if (la_dinode)
   kfree(la_dinode);

  if (tl_dinode)
   kfree(tl_dinode);

  if (qrec)
   ocfs2_free_quota_recovery(qrec);

  mlog_errno(-ENOMEM);
  return;
 }

 INIT_LIST_HEAD(&item->lri_list);
 item->lri_la_dinode = la_dinode;
 item->lri_slot = slot_num;
 item->lri_tl_dinode = tl_dinode;
 item->lri_qrec = qrec;

 spin_lock(&journal->j_lock);
 list_add_tail(&item->lri_list, &journal->j_la_cleanups);
 queue_work(ocfs2_wq, &journal->j_recovery_work);
 spin_unlock(&journal->j_lock);
}
