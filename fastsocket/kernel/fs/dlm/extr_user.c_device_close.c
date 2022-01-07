
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct dlm_user_proc* private_data; } ;
struct dlm_user_proc {int flags; int lockspace; } ;
struct dlm_ls {int dummy; } ;
typedef int sigset_t ;


 int DLM_PROC_FLAGS_CLOSING ;
 int ENOENT ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int dlm_clear_proc_locks (struct dlm_ls*,struct dlm_user_proc*) ;
 struct dlm_ls* dlm_find_lockspace_local (int ) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int kfree (struct dlm_user_proc*) ;
 int recalc_sigpending () ;
 int set_bit (int ,int *) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static int device_close(struct inode *inode, struct file *file)
{
 struct dlm_user_proc *proc = file->private_data;
 struct dlm_ls *ls;
 sigset_t tmpsig, allsigs;

 ls = dlm_find_lockspace_local(proc->lockspace);
 if (!ls)
  return -ENOENT;

 sigfillset(&allsigs);
 sigprocmask(SIG_BLOCK, &allsigs, &tmpsig);

 set_bit(DLM_PROC_FLAGS_CLOSING, &proc->flags);

 dlm_clear_proc_locks(ls, proc);





 kfree(proc);
 file->private_data = ((void*)0);

 dlm_put_lockspace(ls);
 dlm_put_lockspace(ls);




 sigprocmask(SIG_SETMASK, &tmpsig, ((void*)0));
 recalc_sigpending();

 return 0;
}
