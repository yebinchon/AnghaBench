
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int max_slots; int slot_num; int recovery_lock; int recovery_event; int * recovery_thread_task; int journal; int osb_lock; TYPE_1__* sb; struct ocfs2_recovery_map* recovery_map; } ;
struct ocfs2_recovery_map {int* rm_entries; scalar_t__ rm_used; } ;
struct ocfs2_quota_recovery {int dummy; } ;
struct TYPE_2__ {int s_dev; } ;


 int ENOENT ;
 int ENOMEM ;
 int EROFS ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct ocfs2_quota_recovery*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int ML_ERROR ;
 int PTR_ERR (struct ocfs2_quota_recovery*) ;
 int complete_and_exit (int *,int) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int mb () ;
 int mlog (int ,char*,...) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ocfs2_quota_recovery* ocfs2_begin_quota_recovery (struct ocfs2_super*,int) ;
 int ocfs2_check_journals_nolocks (struct ocfs2_super*) ;
 int ocfs2_compute_replay_slots (struct ocfs2_super*) ;
 int ocfs2_free_replay_slots (struct ocfs2_super*) ;
 int ocfs2_node_num_to_slot (struct ocfs2_super*,int) ;
 int ocfs2_queue_recovery_completion (int ,int,int *,int *,struct ocfs2_quota_recovery*) ;
 int ocfs2_queue_replay_slots (struct ocfs2_super*) ;
 int ocfs2_recover_node (struct ocfs2_super*,int,int) ;
 int ocfs2_recovery_completed (struct ocfs2_super*) ;
 int ocfs2_recovery_map_clear (struct ocfs2_super*,int) ;
 int ocfs2_super_lock (struct ocfs2_super*,int) ;
 int ocfs2_super_unlock (struct ocfs2_super*,int) ;
 int ocfs2_wait_on_mount (struct ocfs2_super*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int __ocfs2_recovery_thread(void *arg)
{
 int status, node_num, slot_num;
 struct ocfs2_super *osb = arg;
 struct ocfs2_recovery_map *rm = osb->recovery_map;
 int *rm_quota = ((void*)0);
 int rm_quota_used = 0, i;
 struct ocfs2_quota_recovery *qrec;

 mlog_entry_void();

 status = ocfs2_wait_on_mount(osb);
 if (status < 0) {
  goto bail;
 }

 rm_quota = kzalloc(osb->max_slots * sizeof(int), GFP_NOFS);
 if (!rm_quota) {
  status = -ENOMEM;
  goto bail;
 }
restart:
 status = ocfs2_super_lock(osb, 1);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_compute_replay_slots(osb);
 if (status < 0)
  mlog_errno(status);


 ocfs2_queue_recovery_completion(osb->journal, osb->slot_num, ((void*)0),
     ((void*)0), ((void*)0));

 spin_lock(&osb->osb_lock);
 while (rm->rm_used) {


  node_num = rm->rm_entries[0];
  spin_unlock(&osb->osb_lock);
  mlog(0, "checking node %d\n", node_num);
  slot_num = ocfs2_node_num_to_slot(osb, node_num);
  if (slot_num == -ENOENT) {
   status = 0;
   mlog(0, "no slot for this node, so no recovery"
        "required.\n");
   goto skip_recovery;
  }
  mlog(0, "node %d was using slot %d\n", node_num, slot_num);







  for (i = 0; i < rm_quota_used && rm_quota[i] != slot_num; i++);
  if (i == rm_quota_used)
   rm_quota[rm_quota_used++] = slot_num;

  status = ocfs2_recover_node(osb, node_num, slot_num);
skip_recovery:
  if (!status) {
   ocfs2_recovery_map_clear(osb, node_num);
  } else {
   mlog(ML_ERROR,
        "Error %d recovering node %d on device (%u,%u)!\n",
        status, node_num,
        MAJOR(osb->sb->s_dev), MINOR(osb->sb->s_dev));
   mlog(ML_ERROR, "Volume requires unmount.\n");
  }

  spin_lock(&osb->osb_lock);
 }
 spin_unlock(&osb->osb_lock);
 mlog(0, "All nodes recovered\n");


 status = ocfs2_check_journals_nolocks(osb);
 status = (status == -EROFS) ? 0 : status;
 if (status < 0)
  mlog_errno(status);




 for (i = 0; i < rm_quota_used; i++) {
  qrec = ocfs2_begin_quota_recovery(osb, rm_quota[i]);
  if (IS_ERR(qrec)) {
   status = PTR_ERR(qrec);
   mlog_errno(status);
   continue;
  }
  ocfs2_queue_recovery_completion(osb->journal, rm_quota[i],
      ((void*)0), ((void*)0), qrec);
 }

 ocfs2_super_unlock(osb, 1);


 ocfs2_queue_replay_slots(osb);

bail:
 mutex_lock(&osb->recovery_lock);
 if (!status && !ocfs2_recovery_completed(osb)) {
  mutex_unlock(&osb->recovery_lock);
  goto restart;
 }

 ocfs2_free_replay_slots(osb);
 osb->recovery_thread_task = ((void*)0);
 mb();
 wake_up(&osb->recovery_event);

 mutex_unlock(&osb->recovery_lock);

 if (rm_quota)
  kfree(rm_quota);

 mlog_exit(status);



 complete_and_exit(((void*)0), status);
 return status;
}
