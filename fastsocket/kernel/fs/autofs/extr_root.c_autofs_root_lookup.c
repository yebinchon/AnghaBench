
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int i_mutex; int i_sb; } ;
struct TYPE_7__ {scalar_t__ len; int name; } ;
struct dentry {int d_flags; scalar_t__ d_inode; int * d_op; TYPE_1__ d_name; } ;
struct autofs_sb_info {int catatonic; } ;
typedef int sigset_t ;
struct TYPE_8__ {int signal; } ;
struct TYPE_9__ {TYPE_2__ pending; } ;


 int DCACHE_AUTOFS_PENDING ;
 int DPRINTK (char*) ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ERESTARTNOINTR ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ NAME_MAX ;
 int SIGINT ;
 int SIGKILL ;
 int SIGQUIT ;
 int autofs_dentry_operations ;
 int autofs_oz_mode (struct autofs_sb_info*) ;
 int autofs_revalidate (struct dentry*,struct nameidata*) ;
 int autofs_say (int ,scalar_t__) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 TYPE_3__* current ;
 int d_add (struct dentry*,int *) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sigismember (int *,int ) ;
 scalar_t__ signal_pending (TYPE_3__*) ;
 int task_pgrp_nr (TYPE_3__*) ;
 int task_pid_nr (TYPE_3__*) ;
 int unlock_kernel () ;

__attribute__((used)) static struct dentry *autofs_root_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
 struct autofs_sb_info *sbi;
 int oz_mode;

 DPRINTK(("autofs_root_lookup: name = "));
 lock_kernel();
 autofs_say(dentry->d_name.name,dentry->d_name.len);

 if (dentry->d_name.len > NAME_MAX) {
  unlock_kernel();
  return ERR_PTR(-ENAMETOOLONG);
 }

 sbi = autofs_sbi(dir->i_sb);

 oz_mode = autofs_oz_mode(sbi);
 DPRINTK(("autofs_lookup: pid = %u, pgrp = %u, catatonic = %d, "
    "oz_mode = %d\n", task_pid_nr(current),
    task_pgrp_nr(current), sbi->catatonic,
    oz_mode));
 dentry->d_op = &autofs_dentry_operations;
 dentry->d_flags |= DCACHE_AUTOFS_PENDING;
 d_add(dentry, ((void*)0));

 mutex_unlock(&dir->i_mutex);
 autofs_revalidate(dentry, nd);
 mutex_lock(&dir->i_mutex);





 if (dentry->d_flags & DCACHE_AUTOFS_PENDING) {

  if (signal_pending(current)) {
   sigset_t *sigset = &current->pending.signal;
   if (sigismember (sigset, SIGKILL) ||
       sigismember (sigset, SIGQUIT) ||
       sigismember (sigset, SIGINT)) {
    unlock_kernel();
    return ERR_PTR(-ERESTARTNOINTR);
   }
  }
 }
 unlock_kernel();







 if (dentry->d_inode && d_unhashed(dentry))
  return ERR_PTR(-ENOENT);

 return ((void*)0);
}
