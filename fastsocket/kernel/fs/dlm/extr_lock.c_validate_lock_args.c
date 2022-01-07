
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_flags; int lkb_grmode; int lkb_exflags; int lkb_rqmode; int lkb_ownpid; TYPE_2__* lkb_resource; int lkb_wait_type; int lkb_status; int lkb_id; int lkb_timeout_cs; int lkb_lvbptr; TYPE_1__* lkb_lksb; int lkb_bastfn; int lkb_astparam; int lkb_astfn; scalar_t__ lkb_sbflags; } ;
struct dlm_args {int flags; int mode; int timeout; TYPE_1__* lksb; int bastfn; int astparam; int astfn; } ;
struct TYPE_6__ {scalar_t__ pid; } ;
struct TYPE_5__ {int res_name; } ;
struct TYPE_4__ {int sb_lvbptr; } ;


 int DLM_IFL_MSTCPY ;
 int DLM_LKF_CONVERT ;
 int DLM_LKF_QUECVT ;
 int DLM_LKSTS_GRANTED ;
 int EBUSY ;
 int EINVAL ;
 int ** __quecvt_compat_matrix ;
 TYPE_3__* current ;
 scalar_t__ is_overlap (struct dlm_lkb*) ;
 int log_debug (struct dlm_ls*,char*,int,int ,int,int,int ,int ,int ) ;

__attribute__((used)) static int validate_lock_args(struct dlm_ls *ls, struct dlm_lkb *lkb,
         struct dlm_args *args)
{
 int rv = -EINVAL;

 if (args->flags & DLM_LKF_CONVERT) {
  if (lkb->lkb_flags & DLM_IFL_MSTCPY)
   goto out;

  if (args->flags & DLM_LKF_QUECVT &&
      !__quecvt_compat_matrix[lkb->lkb_grmode+1][args->mode+1])
   goto out;

  rv = -EBUSY;
  if (lkb->lkb_status != DLM_LKSTS_GRANTED)
   goto out;

  if (lkb->lkb_wait_type)
   goto out;

  if (is_overlap(lkb))
   goto out;
 }

 lkb->lkb_exflags = args->flags;
 lkb->lkb_sbflags = 0;
 lkb->lkb_astfn = args->astfn;
 lkb->lkb_astparam = args->astparam;
 lkb->lkb_bastfn = args->bastfn;
 lkb->lkb_rqmode = args->mode;
 lkb->lkb_lksb = args->lksb;
 lkb->lkb_lvbptr = args->lksb->sb_lvbptr;
 lkb->lkb_ownpid = (int) current->pid;
 lkb->lkb_timeout_cs = args->timeout;
 rv = 0;
 out:
 if (rv)
  log_debug(ls, "validate_lock_args %d %x %x %x %d %d %s",
     rv, lkb->lkb_id, lkb->lkb_flags, args->flags,
     lkb->lkb_status, lkb->lkb_wait_type,
     lkb->lkb_resource->res_name);
 return rv;
}
