
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int lkb_status; void* lkb_grmode; void* lkb_rqmode; } ;





 void* DLM_LOCK_IV ;
 int del_lkb (struct dlm_rsb*,struct dlm_lkb*) ;
 int log_print (char*,int) ;
 int move_lkb (struct dlm_rsb*,struct dlm_lkb*,int const) ;
 int unhold_lkb (struct dlm_lkb*) ;

__attribute__((used)) static int revert_lock(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 int rv = 0;

 lkb->lkb_rqmode = DLM_LOCK_IV;

 switch (lkb->lkb_status) {
 case 129:
  break;
 case 130:
  move_lkb(r, lkb, 129);
  rv = 1;
  break;
 case 128:
  del_lkb(r, lkb);
  lkb->lkb_grmode = DLM_LOCK_IV;


  unhold_lkb(lkb);
  rv = -1;
  break;
 default:
  log_print("invalid status for revert %d", lkb->lkb_status);
 }
 return rv;
}
