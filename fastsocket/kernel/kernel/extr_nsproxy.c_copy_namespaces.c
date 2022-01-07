
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct nsproxy* nsproxy; int fs; } ;
struct nsproxy {int dummy; } ;


 int CAP_SYS_ADMIN ;
 unsigned long CLONE_NEWIPC ;
 unsigned long CLONE_NEWNET ;
 unsigned long CLONE_NEWNS ;
 unsigned long CLONE_NEWPID ;
 unsigned long CLONE_NEWUTS ;
 unsigned long CLONE_SYSVSEM ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_ERR (struct nsproxy*) ;
 int PTR_ERR (struct nsproxy*) ;
 int capable (int ) ;
 struct nsproxy* create_new_namespaces (unsigned long,struct task_struct*,int ) ;
 int get_nsproxy (struct nsproxy*) ;
 int put_nsproxy (struct nsproxy*) ;

int copy_namespaces(unsigned long flags, struct task_struct *tsk)
{
 struct nsproxy *old_ns = tsk->nsproxy;
 struct nsproxy *new_ns;
 int err = 0;

 if (!old_ns)
  return 0;

 get_nsproxy(old_ns);

 if (!(flags & (CLONE_NEWNS | CLONE_NEWUTS | CLONE_NEWIPC |
    CLONE_NEWPID | CLONE_NEWNET)))
  return 0;

 if (!capable(CAP_SYS_ADMIN)) {
  err = -EPERM;
  goto out;
 }
 if ((flags & CLONE_NEWIPC) && (flags & CLONE_SYSVSEM)) {
  err = -EINVAL;
  goto out;
 }

 new_ns = create_new_namespaces(flags, tsk, tsk->fs);
 if (IS_ERR(new_ns)) {
  err = PTR_ERR(new_ns);
  goto out;
 }

 tsk->nsproxy = new_ns;

out:
 put_nsproxy(old_ns);
 return err;
}
