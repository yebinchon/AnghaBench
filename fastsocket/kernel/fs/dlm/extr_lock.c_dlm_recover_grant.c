
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_ls {int ls_rsbtbl_size; } ;


 int RSB_RECOVER_GRANT ;
 int cond_resched () ;
 int confirm_master (struct dlm_rsb*,int ) ;
 struct dlm_rsb* find_grant_rsb (struct dlm_ls*,int) ;
 int grant_pending_locks (struct dlm_rsb*) ;
 int lock_rsb (struct dlm_rsb*) ;
 int put_rsb (struct dlm_rsb*) ;
 int rsb_clear_flag (struct dlm_rsb*,int ) ;
 int unlock_rsb (struct dlm_rsb*) ;

void dlm_recover_grant(struct dlm_ls *ls)
{
 struct dlm_rsb *r;
 int bucket = 0;

 while (1) {
  r = find_grant_rsb(ls, bucket);
  if (!r) {
   if (bucket == ls->ls_rsbtbl_size - 1)
    break;
   bucket++;
   continue;
  }
  lock_rsb(r);

  grant_pending_locks(r);
  rsb_clear_flag(r, RSB_RECOVER_GRANT);
  confirm_master(r, 0);
  unlock_rsb(r);
  put_rsb(r);
  cond_resched();
 }
}
