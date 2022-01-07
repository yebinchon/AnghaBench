
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_message {int m_extra; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_exflags; scalar_t__ lkb_lvbptr; } ;


 int DLM_LKF_VALBLK ;
 int DLM_RESNAME_MAXLEN ;
 int ENOMEM ;
 scalar_t__ dlm_allocate_lvb (struct dlm_ls*) ;
 int memcpy (scalar_t__,int ,int) ;
 int receive_extralen (struct dlm_message*) ;

__attribute__((used)) static int receive_lvb(struct dlm_ls *ls, struct dlm_lkb *lkb,
         struct dlm_message *ms)
{
 int len;

 if (lkb->lkb_exflags & DLM_LKF_VALBLK) {
  if (!lkb->lkb_lvbptr)
   lkb->lkb_lvbptr = dlm_allocate_lvb(ls);
  if (!lkb->lkb_lvbptr)
   return -ENOMEM;
  len = receive_extralen(ms);
  if (len > DLM_RESNAME_MAXLEN)
   len = DLM_RESNAME_MAXLEN;
  memcpy(lkb->lkb_lvbptr, ms->m_extra, len);
 }
 return 0;
}
