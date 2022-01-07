
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int * dlm_worker; } ;


 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;

__attribute__((used)) static void dlm_destroy_dlm_worker(struct dlm_ctxt *dlm)
{
 if (dlm->dlm_worker) {
  flush_workqueue(dlm->dlm_worker);
  destroy_workqueue(dlm->dlm_worker);
  dlm->dlm_worker = ((void*)0);
 }
}
