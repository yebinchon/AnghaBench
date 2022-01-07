
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_user_proc {int lockspace; } ;
struct dlm_purge_params {int pid; int nodeid; } ;
struct dlm_ls {int dummy; } ;


 int ENOENT ;
 struct dlm_ls* dlm_find_lockspace_local (int ) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int dlm_user_purge (struct dlm_ls*,struct dlm_user_proc*,int ,int ) ;

__attribute__((used)) static int device_user_purge(struct dlm_user_proc *proc,
        struct dlm_purge_params *params)
{
 struct dlm_ls *ls;
 int error;

 ls = dlm_find_lockspace_local(proc->lockspace);
 if (!ls)
  return -ENOENT;

 error = dlm_user_purge(ls, proc, params->nodeid, params->pid);

 dlm_put_lockspace(ls);
 return error;
}
