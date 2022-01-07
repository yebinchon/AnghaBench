
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;


 scalar_t__ IS_ERR (int *) ;
 int OCFS2_QINFO_WRITE_CREDITS ;
 int OCFS2_SB (struct super_block*) ;
 int PTR_ERR (int *) ;
 int dquot_commit_info (struct super_block*,int) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_commit_trans (int ,int *) ;
 int ocfs2_lock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 int * ocfs2_start_trans (int ,int ) ;
 int ocfs2_unlock_global_qf (struct ocfs2_mem_dqinfo*,int) ;
 TYPE_1__* sb_dqinfo (struct super_block*,int) ;

__attribute__((used)) static int ocfs2_write_info(struct super_block *sb, int type)
{
 handle_t *handle;
 int status = 0;
 struct ocfs2_mem_dqinfo *oinfo = sb_dqinfo(sb, type)->dqi_priv;

 mlog_entry_void();

 status = ocfs2_lock_global_qf(oinfo, 1);
 if (status < 0)
  goto out;
 handle = ocfs2_start_trans(OCFS2_SB(sb), OCFS2_QINFO_WRITE_CREDITS);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  mlog_errno(status);
  goto out_ilock;
 }
 status = dquot_commit_info(sb, type);
 ocfs2_commit_trans(OCFS2_SB(sb), handle);
out_ilock:
 ocfs2_unlock_global_qf(oinfo, 1);
out:
 mlog_exit(status);
 return status;
}
