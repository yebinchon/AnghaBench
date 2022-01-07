
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rsb {TYPE_1__* res_ls; int res_length; int res_name; int res_hash; } ;
struct dlm_message {int m_type; int m_extra; int m_asts; int m_hash; int m_rqmode; int m_grmode; int m_status; int m_lvbseq; int m_flags; int m_sbflags; int m_exflags; int m_remid; int m_lkid; int m_pid; int m_nodeid; } ;
struct dlm_lkb {int lkb_lvbptr; scalar_t__ lkb_astfn; scalar_t__ lkb_bastfn; int lkb_rqmode; int lkb_grmode; int lkb_status; int lkb_lvbseq; int lkb_flags; int lkb_sbflags; int lkb_exflags; int lkb_remid; int lkb_id; int lkb_ownpid; int lkb_nodeid; } ;
struct TYPE_2__ {int ls_lvblen; } ;


 int DLM_CB_BAST ;
 int DLM_CB_CAST ;







 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void send_args(struct dlm_rsb *r, struct dlm_lkb *lkb,
        struct dlm_message *ms)
{
 ms->m_nodeid = lkb->lkb_nodeid;
 ms->m_pid = lkb->lkb_ownpid;
 ms->m_lkid = lkb->lkb_id;
 ms->m_remid = lkb->lkb_remid;
 ms->m_exflags = lkb->lkb_exflags;
 ms->m_sbflags = lkb->lkb_sbflags;
 ms->m_flags = lkb->lkb_flags;
 ms->m_lvbseq = lkb->lkb_lvbseq;
 ms->m_status = lkb->lkb_status;
 ms->m_grmode = lkb->lkb_grmode;
 ms->m_rqmode = lkb->lkb_rqmode;
 ms->m_hash = r->res_hash;




 if (lkb->lkb_bastfn)
  ms->m_asts |= DLM_CB_BAST;
 if (lkb->lkb_astfn)
  ms->m_asts |= DLM_CB_CAST;




 switch (ms->m_type) {
 case 130:
 case 131:
  memcpy(ms->m_extra, r->res_name, r->res_length);
  break;
 case 134:
 case 128:
 case 129:
 case 133:
 case 132:
  if (!lkb->lkb_lvbptr)
   break;
  memcpy(ms->m_extra, lkb->lkb_lvbptr, r->res_ls->ls_lvblen);
  break;
 }
}
