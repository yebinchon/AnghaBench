
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lkb {scalar_t__ lkb_grmode; scalar_t__ lkb_rqmode; scalar_t__ lkb_highbast; } ;


 scalar_t__ DLM_LOCK_CW ;
 scalar_t__ DLM_LOCK_EX ;
 scalar_t__ DLM_LOCK_PR ;
 int modes_compat (struct dlm_lkb*,struct dlm_lkb*) ;

__attribute__((used)) static int modes_require_bast(struct dlm_lkb *gr, struct dlm_lkb *rq)
{
 if ((gr->lkb_grmode == DLM_LOCK_PR && rq->lkb_rqmode == DLM_LOCK_CW) ||
     (gr->lkb_grmode == DLM_LOCK_CW && rq->lkb_rqmode == DLM_LOCK_PR)) {
  if (gr->lkb_highbast < DLM_LOCK_EX)
   return 1;
  return 0;
 }

 if (gr->lkb_highbast < rq->lkb_rqmode && !modes_compat(gr, rq))
  return 1;
 return 0;
}
