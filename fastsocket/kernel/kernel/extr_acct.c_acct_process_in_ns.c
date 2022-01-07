
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {struct bsd_acct_struct* bacct; } ;
struct file {int dummy; } ;
struct bsd_acct_struct {struct file* file; } ;


 int acct_lock ;
 int do_acct_process (struct bsd_acct_struct*,struct pid_namespace*,struct file*) ;
 int fput (struct file*) ;
 int get_file (struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void acct_process_in_ns(struct pid_namespace *ns)
{
 struct file *file = ((void*)0);
 struct bsd_acct_struct *acct;

 acct = ns->bacct;



 if (!acct || !acct->file)
  return;

 spin_lock(&acct_lock);
 file = acct->file;
 if (unlikely(!file)) {
  spin_unlock(&acct_lock);
  return;
 }
 get_file(file);
 spin_unlock(&acct_lock);

 do_acct_process(acct, ns, file);
 fput(file);
}
