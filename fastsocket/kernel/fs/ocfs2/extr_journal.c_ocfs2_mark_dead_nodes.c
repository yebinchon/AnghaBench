
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int max_slots; int slot_num; int osb_lock; int * slot_recovery_generations; } ;
struct ocfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EAGAIN ;
 int ENOENT ;
 scalar_t__ __ocfs2_recovery_map_test (struct ocfs2_super*,unsigned int) ;
 int brelse (struct buffer_head*) ;
 int mlog (int ,char*,int,int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_get_recovery_generation (struct ocfs2_dinode*) ;
 int ocfs2_read_journal_inode (struct ocfs2_super*,int,struct buffer_head**,int *) ;
 int ocfs2_recovery_thread (struct ocfs2_super*,unsigned int) ;
 int ocfs2_slot_to_node_num_locked (struct ocfs2_super*,int,unsigned int*) ;
 int ocfs2_trylock_journal (struct ocfs2_super*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_mark_dead_nodes(struct ocfs2_super *osb)
{
 unsigned int node_num;
 int status, i;
 u32 gen;
 struct buffer_head *bh = ((void*)0);
 struct ocfs2_dinode *di;




 for (i = 0; i < osb->max_slots; i++) {

  status = ocfs2_read_journal_inode(osb, i, &bh, ((void*)0));
  if (status) {
   mlog_errno(status);
   goto bail;
  }
  di = (struct ocfs2_dinode *)bh->b_data;
  gen = ocfs2_get_recovery_generation(di);
  brelse(bh);
  bh = ((void*)0);

  spin_lock(&osb->osb_lock);
  osb->slot_recovery_generations[i] = gen;

  mlog(0, "Slot %u recovery generation is %u\n", i,
       osb->slot_recovery_generations[i]);

  if (i == osb->slot_num) {
   spin_unlock(&osb->osb_lock);
   continue;
  }

  status = ocfs2_slot_to_node_num_locked(osb, i, &node_num);
  if (status == -ENOENT) {
   spin_unlock(&osb->osb_lock);
   continue;
  }

  if (__ocfs2_recovery_map_test(osb, node_num)) {
   spin_unlock(&osb->osb_lock);
   continue;
  }
  spin_unlock(&osb->osb_lock);




  status = ocfs2_trylock_journal(osb, i);
  if (!status) {



   ocfs2_recovery_thread(osb, node_num);
  } else if ((status < 0) && (status != -EAGAIN)) {
   mlog_errno(status);
   goto bail;
  }
 }

 status = 0;
bail:
 mlog_exit(status);
 return status;
}
