
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_recover {scalar_t__ seq; struct dlm_recover* new; struct dlm_recover* nodeids; } ;
struct dlm_ls {scalar_t__ ls_recover_seq; int ls_recover_lock; int ls_flags; struct dlm_recover* ls_recover_args; } ;


 int LSFL_RECOVERY_STOP ;
 int clear_bit (int ,int *) ;
 int kfree (struct dlm_recover*) ;
 int ls_recover (struct dlm_ls*,struct dlm_recover*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void do_ls_recovery(struct dlm_ls *ls)
{
 struct dlm_recover *rv = ((void*)0);

 spin_lock(&ls->ls_recover_lock);
 rv = ls->ls_recover_args;
 ls->ls_recover_args = ((void*)0);
 if (rv && ls->ls_recover_seq == rv->seq)
  clear_bit(LSFL_RECOVERY_STOP, &ls->ls_flags);
 spin_unlock(&ls->ls_recover_lock);

 if (rv) {
  ls_recover(ls, rv);
  kfree(rv->nodeids);
  kfree(rv->new);
  kfree(rv);
 }
}
