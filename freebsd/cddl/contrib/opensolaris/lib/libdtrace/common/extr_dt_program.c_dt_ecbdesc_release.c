
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_5__ {int dtpdd_difo; } ;
struct TYPE_6__ {scalar_t__ dted_refcnt; int * dted_action; TYPE_1__ dted_pred; } ;
typedef TYPE_2__ dtrace_ecbdesc_t ;


 int assert (int ) ;
 int dt_difo_free (int *,int ) ;
 int dt_free (int *,TYPE_2__*) ;

void
dt_ecbdesc_release(dtrace_hdl_t *dtp, dtrace_ecbdesc_t *edp)
{
 if (--edp->dted_refcnt > 0)
  return;

 dt_difo_free(dtp, edp->dted_pred.dtpdd_difo);
 assert(edp->dted_action == ((void*)0));
 dt_free(dtp, edp);
}
