
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int cconn; } ;
struct ocfs2_lock_res {int l_name; int l_lksb; } ;


 int DLM_LKF_CANCEL ;
 int mlog (int ,char*,int ) ;
 int mlog_entry_void () ;
 int mlog_exit (int) ;
 int ocfs2_dlm_unlock (int ,int *,int ,struct ocfs2_lock_res*) ;
 int ocfs2_log_dlm_error (char*,int,struct ocfs2_lock_res*) ;
 int ocfs2_recover_from_dlm_error (struct ocfs2_lock_res*,int ) ;

__attribute__((used)) static int ocfs2_cancel_convert(struct ocfs2_super *osb,
    struct ocfs2_lock_res *lockres)
{
 int ret;

 mlog_entry_void();
 mlog(0, "lock %s\n", lockres->l_name);

 ret = ocfs2_dlm_unlock(osb->cconn, &lockres->l_lksb,
          DLM_LKF_CANCEL, lockres);
 if (ret) {
  ocfs2_log_dlm_error("ocfs2_dlm_unlock", ret, lockres);
  ocfs2_recover_from_dlm_error(lockres, 0);
 }

 mlog(0, "lock %s return from ocfs2_dlm_unlock\n", lockres->l_name);

 mlog_exit(ret);
 return ret;
}
