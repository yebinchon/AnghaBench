
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int list; } ;


 int dlm_complete_recovery_thread (struct dlm_ctxt*) ;
 int dlm_complete_thread (struct dlm_ctxt*) ;
 int dlm_debug_shutdown (struct dlm_ctxt*) ;
 int dlm_destroy_dlm_worker (struct dlm_ctxt*) ;
 int dlm_domain_events ;
 int dlm_domain_lock ;
 int dlm_unregister_domain_handlers (struct dlm_ctxt*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void dlm_complete_dlm_shutdown(struct dlm_ctxt *dlm)
{
 dlm_unregister_domain_handlers(dlm);
 dlm_debug_shutdown(dlm);
 dlm_complete_thread(dlm);
 dlm_complete_recovery_thread(dlm);
 dlm_destroy_dlm_worker(dlm);




 spin_lock(&dlm_domain_lock);
 list_del_init(&dlm->list);
 spin_unlock(&dlm_domain_lock);


 wake_up(&dlm_domain_events);
}
