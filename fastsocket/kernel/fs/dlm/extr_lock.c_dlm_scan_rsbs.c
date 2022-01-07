
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_rsbtbl_size; } ;


 int cond_resched () ;
 scalar_t__ dlm_locking_stopped (struct dlm_ls*) ;
 int shrink_bucket (struct dlm_ls*,int) ;

void dlm_scan_rsbs(struct dlm_ls *ls)
{
 int i;

 for (i = 0; i < ls->ls_rsbtbl_size; i++) {
  shrink_bucket(ls, i);
  if (dlm_locking_stopped(ls))
   break;
  cond_resched();
 }
}
