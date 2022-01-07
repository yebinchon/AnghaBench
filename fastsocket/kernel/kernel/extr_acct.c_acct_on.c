
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct pid_namespace {struct bsd_acct_struct* bacct; } ;
struct TYPE_8__ {struct vfsmount* mnt; TYPE_2__* dentry; } ;
struct file {TYPE_4__ f_path; TYPE_3__* f_op; } ;
struct bsd_acct_struct {int dummy; } ;
struct TYPE_7__ {int write; } ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {int i_mode; } ;


 int EACCES ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_APPEND ;
 int O_LARGEFILE ;
 int O_WRONLY ;
 int PTR_ERR (struct file*) ;
 int S_ISREG (int ) ;
 int acct_file_reopen (struct bsd_acct_struct*,struct file*,struct pid_namespace*) ;
 int acct_lock ;
 int current ;
 int filp_close (struct file*,int *) ;
 struct file* filp_open (char const*,int,int ) ;
 int kfree (struct bsd_acct_struct*) ;
 struct bsd_acct_struct* kzalloc (int,int ) ;
 int mnt_pin (struct vfsmount*) ;
 int mntput (struct vfsmount*) ;
 int security_acct (struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct pid_namespace* task_active_pid_ns (int ) ;

__attribute__((used)) static int acct_on(const char *name)
{
 struct file *file;
 struct vfsmount *mnt;
 int error;
 struct pid_namespace *ns;
 struct bsd_acct_struct *acct = ((void*)0);


 file = filp_open(name, O_WRONLY|O_APPEND|O_LARGEFILE, 0);
 if (IS_ERR(file))
  return PTR_ERR(file);

 if (!S_ISREG(file->f_path.dentry->d_inode->i_mode)) {
  filp_close(file, ((void*)0));
  return -EACCES;
 }

 if (!file->f_op->write) {
  filp_close(file, ((void*)0));
  return -EIO;
 }

 ns = task_active_pid_ns(current);
 if (ns->bacct == ((void*)0)) {
  acct = kzalloc(sizeof(struct bsd_acct_struct), GFP_KERNEL);
  if (acct == ((void*)0)) {
   filp_close(file, ((void*)0));
   return -ENOMEM;
  }
 }

 error = security_acct(file);
 if (error) {
  kfree(acct);
  filp_close(file, ((void*)0));
  return error;
 }

 spin_lock(&acct_lock);
 if (ns->bacct == ((void*)0)) {
  ns->bacct = acct;
  acct = ((void*)0);
 }

 mnt = file->f_path.mnt;
 mnt_pin(mnt);
 acct_file_reopen(ns->bacct, file, ns);
 spin_unlock(&acct_lock);

 mntput(mnt);
 kfree(acct);

 return 0;
}
