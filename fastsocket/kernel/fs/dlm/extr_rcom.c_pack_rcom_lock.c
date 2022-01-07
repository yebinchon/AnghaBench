
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcom_lock {int rl_lvb; int rl_name; void* rl_namelen; int rl_asts; void* rl_wait_type; int rl_status; int rl_grmode; int rl_rqmode; void* rl_lvbseq; void* rl_flags; void* rl_exflags; void* rl_lkid; void* rl_ownpid; } ;
struct dlm_rsb {TYPE_1__* res_ls; int res_length; scalar_t__ res_name; } ;
struct dlm_lkb {scalar_t__ lkb_lvbptr; scalar_t__ lkb_astfn; scalar_t__ lkb_bastfn; int lkb_wait_type; int lkb_status; int lkb_grmode; int lkb_rqmode; int lkb_lvbseq; int lkb_flags; int lkb_exflags; int lkb_id; int lkb_ownpid; } ;
struct TYPE_2__ {int ls_lvblen; } ;


 int DLM_CB_BAST ;
 int DLM_CB_CAST ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int memcpy (int ,scalar_t__,int ) ;
 int memset (struct rcom_lock*,int ,int) ;

__attribute__((used)) static void pack_rcom_lock(struct dlm_rsb *r, struct dlm_lkb *lkb,
      struct rcom_lock *rl)
{
 memset(rl, 0, sizeof(*rl));

 rl->rl_ownpid = cpu_to_le32(lkb->lkb_ownpid);
 rl->rl_lkid = cpu_to_le32(lkb->lkb_id);
 rl->rl_exflags = cpu_to_le32(lkb->lkb_exflags);
 rl->rl_flags = cpu_to_le32(lkb->lkb_flags);
 rl->rl_lvbseq = cpu_to_le32(lkb->lkb_lvbseq);
 rl->rl_rqmode = lkb->lkb_rqmode;
 rl->rl_grmode = lkb->lkb_grmode;
 rl->rl_status = lkb->lkb_status;
 rl->rl_wait_type = cpu_to_le16(lkb->lkb_wait_type);

 if (lkb->lkb_bastfn)
  rl->rl_asts |= DLM_CB_BAST;
 if (lkb->lkb_astfn)
  rl->rl_asts |= DLM_CB_CAST;

 rl->rl_namelen = cpu_to_le16(r->res_length);
 memcpy(rl->rl_name, r->res_name, r->res_length);




 if (lkb->lkb_lvbptr)
  memcpy(rl->rl_lvb, lkb->lkb_lvbptr, r->res_ls->ls_lvblen);
}
