
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {scalar_t__ dlm_state; } ;


 scalar_t__ DLM_CTXT_IN_SHUTDOWN ;
 int dlm_domain_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_shutting_down(struct dlm_ctxt *dlm)
{
 int ret = 0;

 spin_lock(&dlm_domain_lock);

 if (dlm->dlm_state == DLM_CTXT_IN_SHUTDOWN)
  ret = 1;

 spin_unlock(&dlm_domain_lock);

 return ret;
}
