
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ocfs2_super {int slot_num; } ;
struct ocfs2_journal {int j_state; struct buffer_head* j_bh; struct inode* j_inode; TYPE_3__* j_journal; struct ocfs2_super* j_osb; } ;
struct TYPE_6__ {int ij_flags; } ;
struct TYPE_7__ {TYPE_1__ journal1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct inode {scalar_t__ i_size; scalar_t__ i_blocks; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_8__ {unsigned long long j_maxlen; } ;
typedef TYPE_3__ journal_t ;
struct TYPE_9__ {unsigned long long ip_clusters; int ip_open_count; } ;


 int BUG_ON (int) ;
 int EACCES ;
 int EINVAL ;
 int ERESTARTSYS ;
 int JOURNAL_SYSTEM_INODE ;
 int ML_ERROR ;
 TYPE_5__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_DIRTY_FL ;
 int OCFS2_JOURNAL_LOADED ;
 int OCFS2_META_LOCK_RECOVERY ;
 scalar_t__ OCFS2_MIN_JOURNAL_SIZE ;
 int SET_INODE_JOURNAL (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int iput (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 TYPE_3__* jbd2_journal_init_inode (struct inode*) ;
 int le32_to_cpu (int ) ;
 int mlog (int ,char*,...) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_inode_lock_full (struct inode*,struct buffer_head**,int,int ) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_set_journal_params (struct ocfs2_super*) ;

int ocfs2_journal_init(struct ocfs2_journal *journal, int *dirty)
{
 int status = -1;
 struct inode *inode = ((void*)0);
 journal_t *j_journal = ((void*)0);
 struct ocfs2_dinode *di = ((void*)0);
 struct buffer_head *bh = ((void*)0);
 struct ocfs2_super *osb;
 int inode_lock = 0;

 mlog_entry_void();

 BUG_ON(!journal);

 osb = journal->j_osb;


 inode = ocfs2_get_system_file_inode(osb, JOURNAL_SYSTEM_INODE,
         osb->slot_num);
 if (inode == ((void*)0)) {
  status = -EACCES;
  mlog_errno(status);
  goto done;
 }
 if (is_bad_inode(inode)) {
  mlog(ML_ERROR, "access error (bad inode)\n");
  iput(inode);
  inode = ((void*)0);
  status = -EACCES;
  goto done;
 }

 SET_INODE_JOURNAL(inode);
 OCFS2_I(inode)->ip_open_count++;




 status = ocfs2_inode_lock_full(inode, &bh, 1, OCFS2_META_LOCK_RECOVERY);
 if (status < 0) {
  if (status != -ERESTARTSYS)
   mlog(ML_ERROR, "Could not get lock on journal!\n");
  goto done;
 }

 inode_lock = 1;
 di = (struct ocfs2_dinode *)bh->b_data;

 if (inode->i_size < OCFS2_MIN_JOURNAL_SIZE) {
  mlog(ML_ERROR, "Journal file size (%lld) is too small!\n",
       inode->i_size);
  status = -EINVAL;
  goto done;
 }

 mlog(0, "inode->i_size = %lld\n", inode->i_size);
 mlog(0, "inode->i_blocks = %llu\n",
   (unsigned long long)inode->i_blocks);
 mlog(0, "inode->ip_clusters = %u\n", OCFS2_I(inode)->ip_clusters);


 j_journal = jbd2_journal_init_inode(inode);
 if (j_journal == ((void*)0)) {
  mlog(ML_ERROR, "Linux journal layer error\n");
  status = -EINVAL;
  goto done;
 }

 mlog(0, "Returned from jbd2_journal_init_inode\n");
 mlog(0, "j_journal->j_maxlen = %u\n", j_journal->j_maxlen);

 *dirty = (le32_to_cpu(di->id1.journal1.ij_flags) &
    OCFS2_JOURNAL_DIRTY_FL);

 journal->j_journal = j_journal;
 journal->j_inode = inode;
 journal->j_bh = bh;

 ocfs2_set_journal_params(osb);

 journal->j_state = OCFS2_JOURNAL_LOADED;

 status = 0;
done:
 if (status < 0) {
  if (inode_lock)
   ocfs2_inode_unlock(inode, 1);
  brelse(bh);
  if (inode) {
   OCFS2_I(inode)->ip_open_count--;
   iput(inode);
  }
 }

 mlog_exit(status);
 return status;
}
