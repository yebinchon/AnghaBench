
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {struct bsd_acct_struct* bacct; } ;
struct bsd_acct_struct {int * file; } ;


 int acct_file_reopen (struct bsd_acct_struct*,int *,int *) ;
 int acct_lock ;
 int kfree (struct bsd_acct_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void acct_exit_ns(struct pid_namespace *ns)
{
 struct bsd_acct_struct *acct;

 spin_lock(&acct_lock);
 acct = ns->bacct;
 if (acct != ((void*)0)) {
  if (acct->file != ((void*)0))
   acct_file_reopen(acct, ((void*)0), ((void*)0));

  kfree(acct);
 }
 spin_unlock(&acct_lock);
}
