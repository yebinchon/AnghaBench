
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_local_disk_chunk {int dqc_free; int dqc_bitmap; } ;
struct ocfs2_dquot {TYPE_1__* dq_chunk; int dq_local_off; } ;
struct dquot {int dq_type; int dq_flags; struct super_block* dq_sb; } ;
typedef int handle_t ;
struct TYPE_9__ {int * files; } ;
struct TYPE_8__ {scalar_t__ b_data; } ;
struct TYPE_7__ {TYPE_2__* qc_headerbh; int qc_num; } ;


 int BUG_ON (int) ;
 int DQ_READ_B ;
 int INODE_CACHE (int ) ;
 struct ocfs2_dquot* OCFS2_DQUOT (struct dquot*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int clear_bit (int ,int *) ;
 int * journal_current_handle () ;
 int le32_add_cpu (int *,int) ;
 int lock_buffer (TYPE_2__*) ;
 int mlog_errno (int) ;
 int ocfs2_clear_bit (int,int ) ;
 int ocfs2_global_release_dquot (struct dquot*) ;
 int ocfs2_journal_access_dq (int *,int ,TYPE_2__*,int ) ;
 int ocfs2_journal_dirty (int *,TYPE_2__*) ;
 int ol_dqblk_chunk_off (struct super_block*,int ,int ) ;
 TYPE_3__* sb_dqopt (struct super_block*) ;
 int unlock_buffer (TYPE_2__*) ;

__attribute__((used)) static int ocfs2_local_release_dquot(struct dquot *dquot)
{
 int status;
 int type = dquot->dq_type;
 struct ocfs2_dquot *od = OCFS2_DQUOT(dquot);
 struct super_block *sb = dquot->dq_sb;
 struct ocfs2_local_disk_chunk *dchunk;
 int offset;
 handle_t *handle = journal_current_handle();

 BUG_ON(!handle);

 status = ocfs2_global_release_dquot(dquot);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }

 status = ocfs2_journal_access_dq(handle,
   INODE_CACHE(sb_dqopt(sb)->files[type]),
   od->dq_chunk->qc_headerbh, OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }
 offset = ol_dqblk_chunk_off(sb, od->dq_chunk->qc_num,
          od->dq_local_off);
 dchunk = (struct ocfs2_local_disk_chunk *)
   (od->dq_chunk->qc_headerbh->b_data);

 lock_buffer(od->dq_chunk->qc_headerbh);
 ocfs2_clear_bit(offset, dchunk->dqc_bitmap);
 le32_add_cpu(&dchunk->dqc_free, 1);
 unlock_buffer(od->dq_chunk->qc_headerbh);
 status = ocfs2_journal_dirty(handle, od->dq_chunk->qc_headerbh);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }
 status = 0;
out:



 clear_bit(DQ_READ_B, &dquot->dq_flags);
 return status;
}
