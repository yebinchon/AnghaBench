
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int dummy; } ;


 int dlm_unregister_domain (struct dlm_ctxt*) ;

void user_dlm_unregister_context(struct dlm_ctxt *dlm)
{
 dlm_unregister_domain(dlm);
}
