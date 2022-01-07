
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_ua; } ;
struct dlm_args {int dummy; } ;


 int DLM_EUNLOCK ;
 int DLM_LKF_FORCEUNLOCK ;
 int set_unlock_args (int ,int ,struct dlm_args*) ;
 int unlock_lock (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ;

__attribute__((used)) static int unlock_proc_lock(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
 struct dlm_args args;
 int error;

 set_unlock_args(DLM_LKF_FORCEUNLOCK, lkb->lkb_ua, &args);

 error = unlock_lock(ls, lkb, &args);
 if (error == -DLM_EUNLOCK)
  error = 0;
 return error;
}
