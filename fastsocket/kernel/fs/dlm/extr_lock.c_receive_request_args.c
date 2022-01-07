
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {int m_asts; int m_rqmode; int m_lkid; int m_pid; TYPE_1__ m_header; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_exflags; int lkb_lvbptr; int * lkb_astfn; int * lkb_bastfn; int lkb_rqmode; int lkb_grmode; int lkb_remid; int lkb_ownpid; int lkb_nodeid; } ;


 int DLM_CB_BAST ;
 int DLM_CB_CAST ;
 int DLM_LKF_VALBLK ;
 int DLM_LOCK_IV ;
 int ENOMEM ;
 int dlm_allocate_lvb (struct dlm_ls*) ;
 int fake_astfn ;
 int fake_bastfn ;

__attribute__((used)) static int receive_request_args(struct dlm_ls *ls, struct dlm_lkb *lkb,
    struct dlm_message *ms)
{
 lkb->lkb_nodeid = ms->m_header.h_nodeid;
 lkb->lkb_ownpid = ms->m_pid;
 lkb->lkb_remid = ms->m_lkid;
 lkb->lkb_grmode = DLM_LOCK_IV;
 lkb->lkb_rqmode = ms->m_rqmode;

 lkb->lkb_bastfn = (ms->m_asts & DLM_CB_BAST) ? &fake_bastfn : ((void*)0);
 lkb->lkb_astfn = (ms->m_asts & DLM_CB_CAST) ? &fake_astfn : ((void*)0);

 if (lkb->lkb_exflags & DLM_LKF_VALBLK) {

  lkb->lkb_lvbptr = dlm_allocate_lvb(ls);
  if (!lkb->lkb_lvbptr)
   return -ENOMEM;
 }

 return 0;
}
