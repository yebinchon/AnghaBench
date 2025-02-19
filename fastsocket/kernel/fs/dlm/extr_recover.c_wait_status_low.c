
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_rcom {int rc_result; } ;
struct dlm_ls {int ls_low_nodeid; struct dlm_rcom* ls_recover_buf; } ;


 int EINTR ;
 int dlm_rcom_status (struct dlm_ls*,int) ;
 scalar_t__ dlm_recovery_stopped (struct dlm_ls*) ;
 int msleep (int) ;

__attribute__((used)) static int wait_status_low(struct dlm_ls *ls, uint32_t wait_status)
{
 struct dlm_rcom *rc = ls->ls_recover_buf;
 int error = 0, delay = 0, nodeid = ls->ls_low_nodeid;

 for (;;) {
  if (dlm_recovery_stopped(ls)) {
   error = -EINTR;
   goto out;
  }

  error = dlm_rcom_status(ls, nodeid);
  if (error)
   break;

  if (rc->rc_result & wait_status)
   break;
  if (delay < 1000)
   delay += 20;
  msleep(delay);
 }
 out:
 return error;
}
