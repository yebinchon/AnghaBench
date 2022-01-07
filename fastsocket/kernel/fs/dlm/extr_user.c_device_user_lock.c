
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_user_proc {int lockspace; } ;
struct TYPE_2__ {int sb_lkid; } ;
struct dlm_user_args {TYPE_1__ lksb; int xid; int bastaddr; int bastparam; scalar_t__ castaddr; int castparam; scalar_t__ user_lksb; struct dlm_user_proc* proc; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lock_params {int flags; scalar_t__ timeout; int namelen; int name; int mode; int lvb; int lkid; int xid; int bastaddr; int bastparam; scalar_t__ castaddr; int castparam; scalar_t__ lksb; } ;


 int DLM_LKF_CONVERT ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_NOFS ;
 struct dlm_ls* dlm_find_lockspace_local (int ) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int dlm_user_convert (struct dlm_ls*,struct dlm_user_args*,int ,int,int ,int ,unsigned long) ;
 int dlm_user_request (struct dlm_ls*,struct dlm_user_args*,int ,int,int ,int ,unsigned long) ;
 struct dlm_user_args* kzalloc (int,int ) ;

__attribute__((used)) static int device_user_lock(struct dlm_user_proc *proc,
       struct dlm_lock_params *params)
{
 struct dlm_ls *ls;
 struct dlm_user_args *ua;
 int error = -ENOMEM;

 ls = dlm_find_lockspace_local(proc->lockspace);
 if (!ls)
  return -ENOENT;

 if (!params->castaddr || !params->lksb) {
  error = -EINVAL;
  goto out;
 }

 ua = kzalloc(sizeof(struct dlm_user_args), GFP_NOFS);
 if (!ua)
  goto out;
 ua->proc = proc;
 ua->user_lksb = params->lksb;
 ua->castparam = params->castparam;
 ua->castaddr = params->castaddr;
 ua->bastparam = params->bastparam;
 ua->bastaddr = params->bastaddr;
 ua->xid = params->xid;

 if (params->flags & DLM_LKF_CONVERT)
  error = dlm_user_convert(ls, ua,
             params->mode, params->flags,
             params->lkid, params->lvb,
      (unsigned long) params->timeout);
 else {
  error = dlm_user_request(ls, ua,
      params->mode, params->flags,
      params->name, params->namelen,
      (unsigned long) params->timeout);
  if (!error)
   error = ua->lksb.sb_lkid;
 }
 out:
 dlm_put_lockspace(ls);
 return error;
}
