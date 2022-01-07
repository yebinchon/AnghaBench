
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int s_blocksize_bits; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int dqi_gi; struct inode* dqi_gqinode; } ;
struct inode {scalar_t__ i_size; } ;
struct TYPE_6__ {int dqb_curinodes; int dqb_curspace; } ;
struct dquot {int dq_type; struct super_block* dq_sb; int dq_off; TYPE_1__ dq_dqb; } ;
typedef int handle_t ;
struct TYPE_9__ {int dq_originodes; int dq_origspace; int dq_use_count; } ;
struct TYPE_8__ {int ip_alloc_sem; } ;
struct TYPE_7__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 scalar_t__ IS_ERR (int *) ;
 TYPE_5__* OCFS2_DQUOT (struct dquot*) ;
 TYPE_4__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 int PTR_ERR (int *) ;
 int WARN_ON (int ) ;
 int __ocfs2_global_write_info (struct super_block*,int) ;
 int down_write (int *) ;
 scalar_t__ info_dirty (TYPE_2__*) ;
 int journal_current_handle () ;
 int mlog_errno (int) ;
 int ocfs2_calc_global_qinit_credits (struct super_block*,int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_extend_no_holes (struct inode*,scalar_t__,scalar_t__) ;
 int ocfs2_global_qinit_alloc (struct super_block*,int) ;
 int ocfs2_qinfo_lock (struct ocfs2_mem_dqinfo*,int) ;
 int ocfs2_qinfo_unlock (struct ocfs2_mem_dqinfo*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int qtree_read_dquot (int *,struct dquot*) ;
 int qtree_write_dquot (int *,struct dquot*) ;
 TYPE_2__* sb_dqinfo (struct super_block*,int) ;
 int up_write (int *) ;

int ocfs2_global_read_dquot(struct dquot *dquot)
{
 int err, err2, ex = 0;
 struct super_block *sb = dquot->dq_sb;
 int type = dquot->dq_type;
 struct ocfs2_mem_dqinfo *info = sb_dqinfo(sb, type)->dqi_priv;
 struct ocfs2_super *osb = OCFS2_SB(sb);
 struct inode *gqinode = info->dqi_gqinode;
 int need_alloc = ocfs2_global_qinit_alloc(sb, type);
 handle_t *handle = ((void*)0);

 err = ocfs2_qinfo_lock(info, 0);
 if (err < 0)
  goto out;
 err = qtree_read_dquot(&info->dqi_gi, dquot);
 if (err < 0)
  goto out_qlock;
 OCFS2_DQUOT(dquot)->dq_use_count++;
 OCFS2_DQUOT(dquot)->dq_origspace = dquot->dq_dqb.dqb_curspace;
 OCFS2_DQUOT(dquot)->dq_originodes = dquot->dq_dqb.dqb_curinodes;
 ocfs2_qinfo_unlock(info, 0);

 if (!dquot->dq_off) {
  ex = 1;




  WARN_ON(journal_current_handle());
  down_write(&OCFS2_I(gqinode)->ip_alloc_sem);
  err = ocfs2_extend_no_holes(gqinode,
   gqinode->i_size + (need_alloc << sb->s_blocksize_bits),
   gqinode->i_size);
  up_write(&OCFS2_I(gqinode)->ip_alloc_sem);
  if (err < 0)
   goto out;
 }

 handle = ocfs2_start_trans(osb,
       ocfs2_calc_global_qinit_credits(sb, type));
 if (IS_ERR(handle)) {
  err = PTR_ERR(handle);
  goto out;
 }
 err = ocfs2_qinfo_lock(info, ex);
 if (err < 0)
  goto out_trans;
 err = qtree_write_dquot(&info->dqi_gi, dquot);
 if (ex && info_dirty(sb_dqinfo(dquot->dq_sb, dquot->dq_type))) {
  err2 = __ocfs2_global_write_info(dquot->dq_sb, dquot->dq_type);
  if (!err)
   err = err2;
 }
out_qlock:
 if (ex)
  ocfs2_qinfo_unlock(info, 1);
 else
  ocfs2_qinfo_unlock(info, 0);
out_trans:
 if (handle)
  ocfs2_commit_trans(osb, handle);
out:
 if (err < 0)
  mlog_errno(err);
 return err;
}
