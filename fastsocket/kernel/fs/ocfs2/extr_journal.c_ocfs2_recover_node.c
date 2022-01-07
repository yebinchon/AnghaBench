
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int node_num; int journal; } ;
struct ocfs2_dinode {int dummy; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int mlog (int ,char*,int,int) ;
 int mlog_entry (char*,int,int,int) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_begin_local_alloc_recovery (struct ocfs2_super*,int,struct ocfs2_dinode**) ;
 int ocfs2_begin_truncate_log_recovery (struct ocfs2_super*,int,struct ocfs2_dinode**) ;
 int ocfs2_clear_slot (struct ocfs2_super*,int) ;
 int ocfs2_queue_recovery_completion (int ,int,struct ocfs2_dinode*,struct ocfs2_dinode*,int *) ;
 int ocfs2_replay_journal (struct ocfs2_super*,int,int) ;

__attribute__((used)) static int ocfs2_recover_node(struct ocfs2_super *osb,
         int node_num, int slot_num)
{
 int status = 0;
 struct ocfs2_dinode *la_copy = ((void*)0);
 struct ocfs2_dinode *tl_copy = ((void*)0);

 mlog_entry("(node_num=%d, slot_num=%d, osb->node_num = %d)\n",
     node_num, slot_num, osb->node_num);



 BUG_ON(osb->node_num == node_num);

 status = ocfs2_replay_journal(osb, node_num, slot_num);
 if (status < 0) {
  if (status == -EBUSY) {
   mlog(0, "Skipping recovery for slot %u (node %u) "
        "as another node has recovered it\n", slot_num,
        node_num);
   status = 0;
   goto done;
  }
  mlog_errno(status);
  goto done;
 }


 status = ocfs2_begin_local_alloc_recovery(osb, slot_num, &la_copy);
 if (status < 0) {
  mlog_errno(status);
  goto done;
 }




 status = ocfs2_begin_truncate_log_recovery(osb, slot_num, &tl_copy);
 if (status < 0)
  mlog_errno(status);



 status = ocfs2_clear_slot(osb, slot_num);
 if (status < 0)
  mlog_errno(status);


 ocfs2_queue_recovery_completion(osb->journal, slot_num, la_copy,
     tl_copy, ((void*)0));

 status = 0;
done:

 mlog_exit(status);
 return status;
}
