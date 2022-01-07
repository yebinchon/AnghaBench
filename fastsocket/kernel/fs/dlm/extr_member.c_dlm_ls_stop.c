
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {scalar_t__ ls_recover_begin; scalar_t__ ls_recover_status; int ls_in_recovery; int ls_recv_active; int ls_recover_lock; int ls_recover_seq; int ls_flags; } ;


 int LSFL_RECOVERY_STOP ;
 int LSFL_RUNNING ;
 int dlm_recoverd_resume (struct dlm_ls*) ;
 int dlm_recoverd_suspend (struct dlm_ls*) ;
 int down_write (int *) ;
 scalar_t__ jiffies ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int up_write (int *) ;

int dlm_ls_stop(struct dlm_ls *ls)
{
 int new;
 down_write(&ls->ls_recv_active);







 spin_lock(&ls->ls_recover_lock);
 set_bit(LSFL_RECOVERY_STOP, &ls->ls_flags);
 new = test_and_clear_bit(LSFL_RUNNING, &ls->ls_flags);
 ls->ls_recover_seq++;
 spin_unlock(&ls->ls_recover_lock);






 up_write(&ls->ls_recv_active);
 if (new)
  down_write(&ls->ls_in_recovery);







 dlm_recoverd_suspend(ls);
 ls->ls_recover_status = 0;
 dlm_recoverd_resume(ls);

 if (!ls->ls_recover_begin)
  ls->ls_recover_begin = jiffies;
 return 0;
}
