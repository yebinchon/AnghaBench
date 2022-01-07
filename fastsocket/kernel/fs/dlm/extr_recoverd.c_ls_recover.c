
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_recover {scalar_t__ seq; } ;
struct dlm_ls {int ls_recoverd_active; } ;


 int DLM_RS_DONE ;
 int DLM_RS_LOCKS ;
 int dlm_adjust_timeouts (struct dlm_ls*) ;
 int dlm_astd_resume () ;
 int dlm_astd_suspend () ;
 int dlm_astd_wake () ;
 int dlm_clear_members_gone (struct dlm_ls*) ;
 int dlm_clear_toss_list (struct dlm_ls*) ;
 int dlm_create_root_list (struct dlm_ls*) ;
 scalar_t__ dlm_no_directory (struct dlm_ls*) ;
 int dlm_process_requestqueue (struct dlm_ls*) ;
 int dlm_purge_requestqueue (struct dlm_ls*) ;
 int dlm_recover_directory (struct dlm_ls*) ;
 int dlm_recover_directory_wait (struct dlm_ls*) ;
 int dlm_recover_done_wait (struct dlm_ls*) ;
 int dlm_recover_grant (struct dlm_ls*) ;
 int dlm_recover_locks (struct dlm_ls*) ;
 int dlm_recover_locks_wait (struct dlm_ls*) ;
 int dlm_recover_masters (struct dlm_ls*) ;
 int dlm_recover_members (struct dlm_ls*,struct dlm_recover*,int*) ;
 int dlm_recover_purge (struct dlm_ls*) ;
 int dlm_recover_rsbs (struct dlm_ls*) ;
 int dlm_recover_waiters_post (struct dlm_ls*) ;
 int dlm_recover_waiters_pre (struct dlm_ls*) ;
 int dlm_recovery_stopped (struct dlm_ls*) ;
 int dlm_release_root_list (struct dlm_ls*) ;
 int dlm_set_recover_status (struct dlm_ls*,int ) ;
 int enable_locking (struct dlm_ls*,scalar_t__) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int log_debug (struct dlm_ls*,char*,unsigned long long,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ls_recover(struct dlm_ls *ls, struct dlm_recover *rv)
{
 unsigned long start;
 int error, neg = 0;

 log_debug(ls, "recover %llx", (unsigned long long)rv->seq);

 mutex_lock(&ls->ls_recoverd_active);






 dlm_astd_suspend();
 dlm_astd_resume();






 dlm_clear_toss_list(ls);






 dlm_create_root_list(ls);






 error = dlm_recover_members(ls, rv, &neg);
 if (error) {
  log_debug(ls, "recover_members failed %d", error);
  goto fail;
 }
 start = jiffies;






 error = dlm_recover_directory(ls);
 if (error) {
  log_debug(ls, "recover_directory failed %d", error);
  goto fail;
 }





 error = dlm_recover_directory_wait(ls);
 if (error) {
  log_debug(ls, "recover_directory_wait failed %d", error);
  goto fail;
 }







 dlm_recover_waiters_pre(ls);

 error = dlm_recovery_stopped(ls);
 if (error)
  goto fail;

 if (neg || dlm_no_directory(ls)) {




  dlm_recover_purge(ls);






  error = dlm_recover_masters(ls);
  if (error) {
   log_debug(ls, "recover_masters failed %d", error);
   goto fail;
  }





  error = dlm_recover_locks(ls);
  if (error) {
   log_debug(ls, "recover_locks failed %d", error);
   goto fail;
  }

  error = dlm_recover_locks_wait(ls);
  if (error) {
   log_debug(ls, "recover_locks_wait failed %d", error);
   goto fail;
  }







  dlm_recover_rsbs(ls);
 } else {





  dlm_set_recover_status(ls, DLM_RS_LOCKS);

  error = dlm_recover_locks_wait(ls);
  if (error) {
   log_debug(ls, "recover_locks_wait failed %d", error);
   goto fail;
  }
 }

 dlm_release_root_list(ls);







 dlm_purge_requestqueue(ls);

 dlm_set_recover_status(ls, DLM_RS_DONE);
 error = dlm_recover_done_wait(ls);
 if (error) {
  log_debug(ls, "recover_done_wait failed %d", error);
  goto fail;
 }

 dlm_clear_members_gone(ls);

 dlm_adjust_timeouts(ls);

 error = enable_locking(ls, rv->seq);
 if (error) {
  log_debug(ls, "enable_locking failed %d", error);
  goto fail;
 }

 error = dlm_process_requestqueue(ls);
 if (error) {
  log_debug(ls, "process_requestqueue failed %d", error);
  goto fail;
 }

 error = dlm_recover_waiters_post(ls);
 if (error) {
  log_debug(ls, "recover_waiters_post failed %d", error);
  goto fail;
 }

 dlm_recover_grant(ls);

 dlm_astd_wake();

 log_debug(ls, "recover %llx done: %u ms",
    (unsigned long long)rv->seq,
    jiffies_to_msecs(jiffies - start));
 mutex_unlock(&ls->ls_recoverd_active);

 return 0;

 fail:
 dlm_release_root_list(ls);
 log_debug(ls, "recover %llx error %d",
    (unsigned long long)rv->seq, error);
 mutex_unlock(&ls->ls_recoverd_active);
 return error;
}
