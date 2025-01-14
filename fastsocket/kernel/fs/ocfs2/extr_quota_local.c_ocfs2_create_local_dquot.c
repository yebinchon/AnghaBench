
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_quota_chunk {int qc_headerbh; int qc_num; } ;
struct ocfs2_dquot {struct ocfs2_quota_chunk* dq_chunk; int dq_local_off; } ;
struct inode {int dummy; } ;
struct dquot {int dq_type; struct super_block* dq_sb; } ;
struct TYPE_2__ {struct inode** files; } ;


 scalar_t__ IS_ERR (struct ocfs2_quota_chunk*) ;
 struct ocfs2_dquot* OCFS2_DQUOT (struct dquot*) ;
 int PTR_ERR (struct ocfs2_quota_chunk*) ;
 int mlog_errno (int) ;
 struct ocfs2_quota_chunk* ocfs2_extend_local_quota_file (struct super_block*,int,int*) ;
 struct ocfs2_quota_chunk* ocfs2_find_free_entry (struct super_block*,int,int*) ;
 int ocfs2_local_write_dquot (struct dquot*) ;
 int ocfs2_modify_bh (struct inode*,int ,int ,int*) ;
 int ol_dqblk_off (struct super_block*,int ,int) ;
 int olq_alloc_dquot ;
 TYPE_1__* sb_dqopt (struct super_block*) ;

__attribute__((used)) static int ocfs2_create_local_dquot(struct dquot *dquot)
{
 struct super_block *sb = dquot->dq_sb;
 int type = dquot->dq_type;
 struct inode *lqinode = sb_dqopt(sb)->files[type];
 struct ocfs2_quota_chunk *chunk;
 struct ocfs2_dquot *od = OCFS2_DQUOT(dquot);
 int offset;
 int status;

 chunk = ocfs2_find_free_entry(sb, type, &offset);
 if (!chunk) {
  chunk = ocfs2_extend_local_quota_file(sb, type, &offset);
  if (IS_ERR(chunk))
   return PTR_ERR(chunk);
 } else if (IS_ERR(chunk)) {
  return PTR_ERR(chunk);
 }
 od->dq_local_off = ol_dqblk_off(sb, chunk->qc_num, offset);
 od->dq_chunk = chunk;


 status = ocfs2_local_write_dquot(dquot);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }


 status = ocfs2_modify_bh(lqinode, chunk->qc_headerbh, olq_alloc_dquot,
     &offset);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }
out:
 return status;
}
