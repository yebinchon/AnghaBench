
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long data; scalar_t__ expires; int function; } ;
struct dlm_ls {TYPE_1__ ls_timer; int ls_wait_general; } ;
struct TYPE_6__ {int ci_recover_timer; } ;


 int EINTR ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int del_timer_sync (TYPE_1__*) ;
 TYPE_2__ dlm_config ;
 scalar_t__ dlm_recovery_stopped (struct dlm_ls*) ;
 int dlm_wait_timer_fn ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int log_debug (struct dlm_ls*,char*) ;
 int wait_event (int ,int) ;

int dlm_wait_function(struct dlm_ls *ls, int (*testfn) (struct dlm_ls *ls))
{
 int error = 0;

 init_timer(&ls->ls_timer);
 ls->ls_timer.function = dlm_wait_timer_fn;
 ls->ls_timer.data = (long) ls;
 ls->ls_timer.expires = jiffies + (dlm_config.ci_recover_timer * HZ);
 add_timer(&ls->ls_timer);

 wait_event(ls->ls_wait_general, testfn(ls) || dlm_recovery_stopped(ls));
 del_timer_sync(&ls->ls_timer);

 if (dlm_recovery_stopped(ls)) {
  log_debug(ls, "dlm_wait_function aborted");
  error = -EINTR;
 }
 return error;
}
