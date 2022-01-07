
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_dquot {int dq_local_off; } ;
struct dquot {size_t dq_type; struct super_block* dq_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int * files; } ;


 struct ocfs2_dquot* OCFS2_DQUOT (struct dquot*) ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 int ocfs2_modify_bh (int ,struct buffer_head*,int ,struct ocfs2_dquot*) ;
 int ocfs2_read_quota_block (int ,int ,struct buffer_head**) ;
 int ol_dqblk_file_block (struct super_block*,int ) ;
 int olq_set_dquot ;
 TYPE_1__* sb_dqopt (struct super_block*) ;

__attribute__((used)) static int ocfs2_local_write_dquot(struct dquot *dquot)
{
 struct super_block *sb = dquot->dq_sb;
 struct ocfs2_dquot *od = OCFS2_DQUOT(dquot);
 struct buffer_head *bh = ((void*)0);
 int status;

 status = ocfs2_read_quota_block(sb_dqopt(sb)->files[dquot->dq_type],
        ol_dqblk_file_block(sb, od->dq_local_off),
        &bh);
 if (status) {
  mlog_errno(status);
  goto out;
 }
 status = ocfs2_modify_bh(sb_dqopt(sb)->files[dquot->dq_type], bh,
     olq_set_dquot, od);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }
out:
 brelse(bh);
 return status;
}
