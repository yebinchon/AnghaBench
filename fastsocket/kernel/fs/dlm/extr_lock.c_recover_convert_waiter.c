
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h_nodeid; } ;
struct TYPE_4__ {TYPE_1__ m_header; int m_flags; int m_result; int m_type; } ;
struct dlm_ls {TYPE_2__ ls_stub_ms; } ;
struct dlm_lkb {scalar_t__ lkb_grmode; scalar_t__ lkb_rqmode; int lkb_flags; int lkb_resource; int lkb_nodeid; } ;


 int DLM_IFL_RESEND ;
 scalar_t__ DLM_LOCK_IV ;
 int DLM_MSG_CONVERT_REPLY ;
 int EINPROGRESS ;
 int RSB_RECOVER_CONVERT ;
 int _receive_convert_reply (struct dlm_lkb*,TYPE_2__*) ;
 int hold_lkb (struct dlm_lkb*) ;
 scalar_t__ middle_conversion (struct dlm_lkb*) ;
 int rsb_set_flag (int ,int ) ;
 int unhold_lkb (struct dlm_lkb*) ;

__attribute__((used)) static void recover_convert_waiter(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
 if (middle_conversion(lkb)) {
  hold_lkb(lkb);
  ls->ls_stub_ms.m_type = DLM_MSG_CONVERT_REPLY;
  ls->ls_stub_ms.m_result = -EINPROGRESS;
  ls->ls_stub_ms.m_flags = lkb->lkb_flags;
  ls->ls_stub_ms.m_header.h_nodeid = lkb->lkb_nodeid;
  _receive_convert_reply(lkb, &ls->ls_stub_ms);


  lkb->lkb_grmode = DLM_LOCK_IV;
  rsb_set_flag(lkb->lkb_resource, RSB_RECOVER_CONVERT);
  unhold_lkb(lkb);

 } else if (lkb->lkb_rqmode >= lkb->lkb_grmode) {
  lkb->lkb_flags |= DLM_IFL_RESEND;
 }



}
