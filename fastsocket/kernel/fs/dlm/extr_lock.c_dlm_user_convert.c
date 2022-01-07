
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ sb_lvbptr; } ;
struct dlm_user_args {TYPE_1__ lksb; int user_lksb; int bastaddr; int bastparam; int castaddr; int castparam; int xid; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {struct dlm_user_args* lkb_ua; } ;
struct dlm_args {int dummy; } ;


 int DLM_LKF_VALBLK ;
 int DLM_USER_LVB_LEN ;
 int EAGAIN ;
 int EDEADLK ;
 int EINPROGRESS ;
 int ENOMEM ;
 int GFP_NOFS ;
 int convert_lock (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ;
 int dlm_lock_recovery (struct dlm_ls*) ;
 int dlm_put_lkb (struct dlm_lkb*) ;
 int dlm_unlock_recovery (struct dlm_ls*) ;
 int fake_astfn ;
 int fake_bastfn ;
 int find_lkb (struct dlm_ls*,int,struct dlm_lkb**) ;
 int kfree (struct dlm_user_args*) ;
 scalar_t__ kzalloc (int ,int ) ;
 int memcpy (scalar_t__,char*,int ) ;
 int set_lock_args (int,TYPE_1__*,int,int ,unsigned long,int ,struct dlm_user_args*,int ,struct dlm_args*) ;

int dlm_user_convert(struct dlm_ls *ls, struct dlm_user_args *ua_tmp,
       int mode, uint32_t flags, uint32_t lkid, char *lvb_in,
       unsigned long timeout_cs)
{
 struct dlm_lkb *lkb;
 struct dlm_args args;
 struct dlm_user_args *ua;
 int error;

 dlm_lock_recovery(ls);

 error = find_lkb(ls, lkid, &lkb);
 if (error)
  goto out;




 ua = lkb->lkb_ua;

 if (flags & DLM_LKF_VALBLK && !ua->lksb.sb_lvbptr) {
  ua->lksb.sb_lvbptr = kzalloc(DLM_USER_LVB_LEN, GFP_NOFS);
  if (!ua->lksb.sb_lvbptr) {
   error = -ENOMEM;
   goto out_put;
  }
 }
 if (lvb_in && ua->lksb.sb_lvbptr)
  memcpy(ua->lksb.sb_lvbptr, lvb_in, DLM_USER_LVB_LEN);

 ua->xid = ua_tmp->xid;
 ua->castparam = ua_tmp->castparam;
 ua->castaddr = ua_tmp->castaddr;
 ua->bastparam = ua_tmp->bastparam;
 ua->bastaddr = ua_tmp->bastaddr;
 ua->user_lksb = ua_tmp->user_lksb;

 error = set_lock_args(mode, &ua->lksb, flags, 0, timeout_cs,
         fake_astfn, ua, fake_bastfn, &args);
 if (error)
  goto out_put;

 error = convert_lock(ls, lkb, &args);

 if (error == -EINPROGRESS || error == -EAGAIN || error == -EDEADLK)
  error = 0;
 out_put:
 dlm_put_lkb(lkb);
 out:
 dlm_unlock_recovery(ls);
 kfree(ua_tmp);
 return error;
}
