
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcom_lock {int rl_asts; scalar_t__ rl_wait_type; int rl_status; int rl_lvb; int rl_grmode; int rl_rqmode; int rl_lvbseq; int rl_flags; int rl_exflags; int rl_lkid; int rl_ownpid; } ;
struct dlm_rsb {int dummy; } ;
struct TYPE_2__ {int h_length; int h_nodeid; } ;
struct dlm_rcom {TYPE_1__ rc_header; scalar_t__ rc_buf; } ;
struct dlm_ls {int ls_lvblen; } ;
struct dlm_lkb {int lkb_ownpid; int lkb_remid; int lkb_exflags; int lkb_flags; int lkb_lvbseq; int lkb_grmode; int lkb_lvbptr; int * lkb_astfn; int * lkb_bastfn; int lkb_rqmode; int lkb_nodeid; } ;


 int DLM_CB_BAST ;
 int DLM_CB_CAST ;
 int DLM_IFL_MSTCPY ;
 int DLM_LKF_VALBLK ;
 int DLM_LKSTS_CONVERT ;
 int DLM_LOCK_IV ;
 int DLM_MSG_CONVERT ;
 int EINVAL ;
 int ENOMEM ;
 int RSB_RECOVER_CONVERT ;
 scalar_t__ cpu_to_le16 (int ) ;
 int dlm_allocate_lvb (struct dlm_ls*) ;
 int fake_astfn ;
 int fake_bastfn ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ middle_conversion (struct dlm_lkb*) ;
 int rsb_set_flag (struct dlm_rsb*,int ) ;

__attribute__((used)) static int receive_rcom_lock_args(struct dlm_ls *ls, struct dlm_lkb *lkb,
      struct dlm_rsb *r, struct dlm_rcom *rc)
{
 struct rcom_lock *rl = (struct rcom_lock *) rc->rc_buf;

 lkb->lkb_nodeid = rc->rc_header.h_nodeid;
 lkb->lkb_ownpid = le32_to_cpu(rl->rl_ownpid);
 lkb->lkb_remid = le32_to_cpu(rl->rl_lkid);
 lkb->lkb_exflags = le32_to_cpu(rl->rl_exflags);
 lkb->lkb_flags = le32_to_cpu(rl->rl_flags) & 0x0000FFFF;
 lkb->lkb_flags |= DLM_IFL_MSTCPY;
 lkb->lkb_lvbseq = le32_to_cpu(rl->rl_lvbseq);
 lkb->lkb_rqmode = rl->rl_rqmode;
 lkb->lkb_grmode = rl->rl_grmode;


 lkb->lkb_bastfn = (rl->rl_asts & DLM_CB_BAST) ? &fake_bastfn : ((void*)0);
 lkb->lkb_astfn = (rl->rl_asts & DLM_CB_CAST) ? &fake_astfn : ((void*)0);

 if (lkb->lkb_exflags & DLM_LKF_VALBLK) {
  int lvblen = rc->rc_header.h_length - sizeof(struct dlm_rcom) -
    sizeof(struct rcom_lock);
  if (lvblen > ls->ls_lvblen)
   return -EINVAL;
  lkb->lkb_lvbptr = dlm_allocate_lvb(ls);
  if (!lkb->lkb_lvbptr)
   return -ENOMEM;
  memcpy(lkb->lkb_lvbptr, rl->rl_lvb, lvblen);
 }





 if (rl->rl_wait_type == cpu_to_le16(DLM_MSG_CONVERT) &&
     middle_conversion(lkb)) {
  rl->rl_status = DLM_LKSTS_CONVERT;
  lkb->lkb_grmode = DLM_LOCK_IV;
  rsb_set_flag(r, RSB_RECOVER_CONVERT);
 }

 return 0;
}
