
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int dlm_refs; } ;


 int dlm_ctxt_release ;
 int dlm_domain_lock ;
 int kref_put (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dlm_put(struct dlm_ctxt *dlm)
{
 spin_lock(&dlm_domain_lock);
 kref_put(&dlm->dlm_refs, dlm_ctxt_release);
 spin_unlock(&dlm_domain_lock);
}
