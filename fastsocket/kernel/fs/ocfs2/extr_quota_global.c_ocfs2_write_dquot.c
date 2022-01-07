
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct dquot {int dq_type; int dq_id; int dq_sb; } ;
typedef int handle_t ;


 scalar_t__ IS_ERR (int *) ;
 int OCFS2_QWRITE_CREDITS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int dquot_commit (struct dquot*) ;
 int mlog_entry (char*,int ,int ) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;

__attribute__((used)) static int ocfs2_write_dquot(struct dquot *dquot)
{
 handle_t *handle;
 struct ocfs2_super *osb = OCFS2_SB(dquot->dq_sb);
 int status = 0;

 mlog_entry("id=%u, type=%d", dquot->dq_id, dquot->dq_type);

 handle = ocfs2_start_trans(osb, OCFS2_QWRITE_CREDITS);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  goto out;
 }
 status = dquot_commit(dquot);
 ocfs2_commit_trans(osb, handle);
out:
 mlog_exit(status);
 return status;
}
