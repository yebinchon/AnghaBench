
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_user_args {int dummy; } ;
struct dlm_rsb {int dummy; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_flags; struct dlm_rsb* lkb_resource; struct dlm_user_args* lkb_ua; } ;
struct dlm_args {int dummy; } ;


 int DLM_ECANCEL ;
 int DLM_IFL_DEADLOCK_CANCEL ;
 int EBUSY ;
 int _cancel_lock (struct dlm_rsb*,struct dlm_lkb*) ;
 int dlm_lock_recovery (struct dlm_ls*) ;
 int dlm_put_lkb (struct dlm_lkb*) ;
 int dlm_unlock_recovery (struct dlm_ls*) ;
 int find_lkb (struct dlm_ls*,int ,struct dlm_lkb**) ;
 int hold_rsb (struct dlm_rsb*) ;
 int lock_rsb (struct dlm_rsb*) ;
 int put_rsb (struct dlm_rsb*) ;
 int set_unlock_args (int ,struct dlm_user_args*,struct dlm_args*) ;
 int unlock_rsb (struct dlm_rsb*) ;
 int validate_unlock_args (struct dlm_lkb*,struct dlm_args*) ;

int dlm_user_deadlock(struct dlm_ls *ls, uint32_t flags, uint32_t lkid)
{
 struct dlm_lkb *lkb;
 struct dlm_args args;
 struct dlm_user_args *ua;
 struct dlm_rsb *r;
 int error;

 dlm_lock_recovery(ls);

 error = find_lkb(ls, lkid, &lkb);
 if (error)
  goto out;

 ua = lkb->lkb_ua;

 error = set_unlock_args(flags, ua, &args);
 if (error)
  goto out_put;



 r = lkb->lkb_resource;
 hold_rsb(r);
 lock_rsb(r);

 error = validate_unlock_args(lkb, &args);
 if (error)
  goto out_r;
 lkb->lkb_flags |= DLM_IFL_DEADLOCK_CANCEL;

 error = _cancel_lock(r, lkb);
 out_r:
 unlock_rsb(r);
 put_rsb(r);

 if (error == -DLM_ECANCEL)
  error = 0;

 if (error == -EBUSY)
  error = 0;
 out_put:
 dlm_put_lkb(lkb);
 out:
 dlm_unlock_recovery(ls);
 return error;
}
