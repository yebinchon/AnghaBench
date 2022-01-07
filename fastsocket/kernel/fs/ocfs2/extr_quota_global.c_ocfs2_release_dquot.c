
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct dquot {int dq_type; int dq_sb; int dq_id; } ;
typedef int handle_t ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 scalar_t__ IS_ERR (int *) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int dquot_release (struct dquot*) ;
 int mlog_entry (char*,int ,int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_calc_qdel_credits (int ,int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_lock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_unlock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 TYPE_1__* sb_dqinfo (int ,int ) ;

__attribute__((used)) static int ocfs2_release_dquot(struct dquot *dquot)
{
 handle_t *handle;
 struct ocfs2_mem_dqinfo *oinfo =
   sb_dqinfo(dquot->dq_sb, dquot->dq_type)->dqi_priv;
 struct ocfs2_super *osb = OCFS2_SB(dquot->dq_sb);
 int status = 0;

 mlog_entry("id=%u, type=%d", dquot->dq_id, dquot->dq_type);

 status = ocfs2_lock_global_qf(oinfo, 1);
 if (status < 0)
  goto out;
 handle = ocfs2_start_trans(osb,
  ocfs2_calc_qdel_credits(dquot->dq_sb, dquot->dq_type));
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  goto out_ilock;
 }
 status = dquot_release(dquot);
 ocfs2_commit_trans(osb, handle);
out_ilock:
 ocfs2_unlock_global_qf(oinfo, 1);
out:
 mlog_exit(status);
 return status;
}
