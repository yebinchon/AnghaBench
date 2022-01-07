
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_message {int m_lvbseq; int m_extra; } ;
struct dlm_lkb {int lkb_exflags; int lkb_grmode; int lkb_rqmode; int lkb_lvbseq; int lkb_lvbptr; } ;


 int DLM_LKF_VALBLK ;
 int DLM_RESNAME_MAXLEN ;
 int** dlm_lvb_operations ;
 int memcpy (int ,int ,int) ;
 int receive_extralen (struct dlm_message*) ;

__attribute__((used)) static void set_lvb_lock_pc(struct dlm_rsb *r, struct dlm_lkb *lkb,
       struct dlm_message *ms)
{
 int b;

 if (!lkb->lkb_lvbptr)
  return;

 if (!(lkb->lkb_exflags & DLM_LKF_VALBLK))
  return;

 b = dlm_lvb_operations[lkb->lkb_grmode + 1][lkb->lkb_rqmode + 1];
 if (b == 1) {
  int len = receive_extralen(ms);
  if (len > DLM_RESNAME_MAXLEN)
   len = DLM_RESNAME_MAXLEN;
  memcpy(lkb->lkb_lvbptr, ms->m_extra, len);
  lkb->lkb_lvbseq = ms->m_lvbseq;
 }
}
