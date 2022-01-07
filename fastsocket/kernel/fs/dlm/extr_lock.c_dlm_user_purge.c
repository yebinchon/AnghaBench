
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_user_proc {int dummy; } ;
struct dlm_ls {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 TYPE_1__* current ;
 int dlm_lock_recovery (struct dlm_ls*) ;
 int dlm_our_nodeid () ;
 int dlm_unlock_recovery (struct dlm_ls*) ;
 int do_purge (struct dlm_ls*,int,int) ;
 int purge_proc_locks (struct dlm_ls*,struct dlm_user_proc*) ;
 int send_purge (struct dlm_ls*,int,int) ;

int dlm_user_purge(struct dlm_ls *ls, struct dlm_user_proc *proc,
     int nodeid, int pid)
{
 int error = 0;

 if (nodeid != dlm_our_nodeid()) {
  error = send_purge(ls, nodeid, pid);
 } else {
  dlm_lock_recovery(ls);
  if (pid == current->pid)
   purge_proc_locks(ls, proc);
  else
   do_purge(ls, nodeid, pid);
  dlm_unlock_recovery(ls);
 }
 return error;
}
