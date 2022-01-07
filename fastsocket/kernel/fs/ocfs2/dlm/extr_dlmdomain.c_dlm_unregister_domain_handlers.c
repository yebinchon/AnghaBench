
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int dlm_domain_handlers; int dlm_hb_down; int dlm_hb_up; } ;


 int o2hb_unregister_callback (int *,int *) ;
 int o2net_unregister_handler_list (int *) ;

__attribute__((used)) static void dlm_unregister_domain_handlers(struct dlm_ctxt *dlm)
{
 o2hb_unregister_callback(((void*)0), &dlm->dlm_hb_up);
 o2hb_unregister_callback(((void*)0), &dlm->dlm_hb_down);
 o2net_unregister_handler_list(&dlm->dlm_domain_handlers);
}
