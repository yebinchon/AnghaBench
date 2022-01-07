
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_super {scalar_t__* slot_recovery_generations; TYPE_3__* sb; } ;
struct TYPE_6__ {int ij_flags; } ;
struct TYPE_7__ {TYPE_1__ journal1; } ;
struct ocfs2_dinode {int i_check; TYPE_2__ id1; int i_clusters; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int journal_t ;
struct TYPE_9__ {void* ip_clusters; } ;
struct TYPE_8__ {int s_dev; } ;


 int BUG () ;
 int EBUSY ;
 int EIO ;
 int ERESTARTSYS ;
 int INODE_CACHE (struct inode*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int ML_ERROR ;
 int ML_NOTICE ;
 TYPE_5__* OCFS2_I (struct inode*) ;
 unsigned int OCFS2_JOURNAL_DIRTY_FL ;
 int OCFS2_META_LOCK_RECOVERY ;
 int REPLAY_NEEDED ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (unsigned int) ;
 int igrab (struct inode*) ;
 int iput (struct inode*) ;
 int jbd2_journal_destroy (int *) ;
 int jbd2_journal_flush (int *) ;
 int * jbd2_journal_init_inode (struct inode*) ;
 int jbd2_journal_load (int *) ;
 int jbd2_journal_lock_updates (int *) ;
 int jbd2_journal_unlock_updates (int *) ;
 void* le32_to_cpu (int ) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_bump_recovery_generation (struct ocfs2_dinode*) ;
 int ocfs2_clear_journal_error (TYPE_3__*,int *,int) ;
 int ocfs2_compute_meta_ecc (TYPE_3__*,scalar_t__,int *) ;
 int ocfs2_force_read_journal (struct inode*) ;
 scalar_t__ ocfs2_get_recovery_generation (struct ocfs2_dinode*) ;
 int ocfs2_inode_lock_full (struct inode*,struct buffer_head**,int,int ) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_read_journal_inode (struct ocfs2_super*,int,struct buffer_head**,struct inode**) ;
 int ocfs2_replay_map_set_state (struct ocfs2_super*,int ) ;
 int ocfs2_write_block (struct ocfs2_super*,struct buffer_head*,int ) ;

__attribute__((used)) static int ocfs2_replay_journal(struct ocfs2_super *osb,
    int node_num,
    int slot_num)
{
 int status;
 int got_lock = 0;
 unsigned int flags;
 struct inode *inode = ((void*)0);
 struct ocfs2_dinode *fe;
 journal_t *journal = ((void*)0);
 struct buffer_head *bh = ((void*)0);
 u32 slot_reco_gen;

 status = ocfs2_read_journal_inode(osb, slot_num, &bh, &inode);
 if (status) {
  mlog_errno(status);
  goto done;
 }

 fe = (struct ocfs2_dinode *)bh->b_data;
 slot_reco_gen = ocfs2_get_recovery_generation(fe);
 brelse(bh);
 bh = ((void*)0);
 if (osb->slot_recovery_generations[slot_num] != slot_reco_gen) {
  mlog(0, "Slot %u already recovered (old/new=%u/%u)\n", slot_num,
       osb->slot_recovery_generations[slot_num], slot_reco_gen);
  osb->slot_recovery_generations[slot_num] = slot_reco_gen;
  status = -EBUSY;
  goto done;
 }



 status = ocfs2_inode_lock_full(inode, &bh, 1, OCFS2_META_LOCK_RECOVERY);
 if (status < 0) {
  mlog(0, "status returned from ocfs2_inode_lock=%d\n", status);
  if (status != -ERESTARTSYS)
   mlog(ML_ERROR, "Could not lock journal!\n");
  goto done;
 }
 got_lock = 1;

 fe = (struct ocfs2_dinode *) bh->b_data;

 flags = le32_to_cpu(fe->id1.journal1.ij_flags);
 slot_reco_gen = ocfs2_get_recovery_generation(fe);

 if (!(flags & OCFS2_JOURNAL_DIRTY_FL)) {
  mlog(0, "No recovery required for node %d\n", node_num);

  osb->slot_recovery_generations[slot_num] = slot_reco_gen;
  goto done;
 }


 ocfs2_replay_map_set_state(osb, REPLAY_NEEDED);

 mlog(ML_NOTICE, "Recovering node %d from slot %d on device (%u,%u)\n",
      node_num, slot_num,
      MAJOR(osb->sb->s_dev), MINOR(osb->sb->s_dev));

 OCFS2_I(inode)->ip_clusters = le32_to_cpu(fe->i_clusters);

 status = ocfs2_force_read_journal(inode);
 if (status < 0) {
  mlog_errno(status);
  goto done;
 }

 mlog(0, "calling journal_init_inode\n");
 journal = jbd2_journal_init_inode(inode);
 if (journal == ((void*)0)) {
  mlog(ML_ERROR, "Linux journal layer error\n");
  status = -EIO;
  goto done;
 }

 status = jbd2_journal_load(journal);
 if (status < 0) {
  mlog_errno(status);
  if (!igrab(inode))
   BUG();
  jbd2_journal_destroy(journal);
  goto done;
 }

 ocfs2_clear_journal_error(osb->sb, journal, slot_num);


 mlog(0, "flushing the journal.\n");
 jbd2_journal_lock_updates(journal);
 status = jbd2_journal_flush(journal);
 jbd2_journal_unlock_updates(journal);
 if (status < 0)
  mlog_errno(status);


 flags = le32_to_cpu(fe->id1.journal1.ij_flags);
 flags &= ~OCFS2_JOURNAL_DIRTY_FL;
 fe->id1.journal1.ij_flags = cpu_to_le32(flags);


 ocfs2_bump_recovery_generation(fe);
 osb->slot_recovery_generations[slot_num] =
     ocfs2_get_recovery_generation(fe);

 ocfs2_compute_meta_ecc(osb->sb, bh->b_data, &fe->i_check);
 status = ocfs2_write_block(osb, bh, INODE_CACHE(inode));
 if (status < 0)
  mlog_errno(status);

 if (!igrab(inode))
  BUG();

 jbd2_journal_destroy(journal);

done:

 if (got_lock)
  ocfs2_inode_unlock(inode, 1);

 if (inode)
  iput(inode);

 brelse(bh);

 mlog_exit(status);
 return status;
}
