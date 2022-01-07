
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pid_namespace {int dummy; } ;
struct TYPE_5__ {int mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct bsd_acct_struct {int active; TYPE_2__ timer; int list; scalar_t__ needcheck; struct pid_namespace* ns; struct file* file; } ;


 int ACCT_TIMEOUT ;
 int HZ ;
 int acct_list ;
 int acct_lock ;
 int acct_timeout ;
 int add_timer (TYPE_2__*) ;
 int del_timer (TYPE_2__*) ;
 int do_acct_process (struct bsd_acct_struct*,struct pid_namespace*,struct file*) ;
 int filp_close (struct file*,int *) ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mnt_unpin (int ) ;
 int setup_timer (TYPE_2__*,int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void acct_file_reopen(struct bsd_acct_struct *acct, struct file *file,
  struct pid_namespace *ns)
{
 struct file *old_acct = ((void*)0);
 struct pid_namespace *old_ns = ((void*)0);

 if (acct->file) {
  old_acct = acct->file;
  old_ns = acct->ns;
  del_timer(&acct->timer);
  acct->active = 0;
  acct->needcheck = 0;
  acct->file = ((void*)0);
  acct->ns = ((void*)0);
  list_del(&acct->list);
 }
 if (file) {
  acct->file = file;
  acct->ns = ns;
  acct->needcheck = 0;
  acct->active = 1;
  list_add(&acct->list, &acct_list);

  setup_timer(&acct->timer, acct_timeout, (unsigned long)acct);
  acct->timer.expires = jiffies + ACCT_TIMEOUT*HZ;
  add_timer(&acct->timer);
 }
 if (old_acct) {
  mnt_unpin(old_acct->f_path.mnt);
  spin_unlock(&acct_lock);
  do_acct_process(acct, old_ns, old_acct);
  filp_close(old_acct, ((void*)0));
  spin_lock(&acct_lock);
 }
}
