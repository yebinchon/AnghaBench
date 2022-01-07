
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {uintptr_t dtad_uarg; TYPE_2__* dtsd_ecbdesc; struct TYPE_7__* dtsd_strdata; int * dtsd_fmtdata; struct TYPE_7__* dtad_next; int dtad_difo; struct TYPE_7__* dtsd_action; struct TYPE_7__* dtsd_action_last; } ;
typedef TYPE_1__ dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_8__ {TYPE_1__* dted_action; } ;
typedef TYPE_2__ dtrace_ecbdesc_t ;
typedef TYPE_1__ dtrace_actdesc_t ;


 int assert (int) ;
 int dt_difo_free (int *,int ) ;
 int dt_ecbdesc_release (int *,TYPE_2__*) ;
 int dt_free (int *,TYPE_1__*) ;
 int dt_printf_destroy (int *) ;

void
dtrace_stmt_destroy(dtrace_hdl_t *dtp, dtrace_stmtdesc_t *sdp)
{
 dtrace_ecbdesc_t *edp = sdp->dtsd_ecbdesc;





 if (sdp->dtsd_action != ((void*)0)) {
  dtrace_actdesc_t *last = sdp->dtsd_action_last;
  dtrace_actdesc_t *ap, *next;

  assert(last != ((void*)0));

  for (ap = edp->dted_action; ap != ((void*)0); ap = ap->dtad_next) {
   if (ap == sdp->dtsd_action)
    break;

   if (ap->dtad_next == sdp->dtsd_action)
    break;
  }

  assert(ap != ((void*)0));

  if (ap == edp->dted_action)
   edp->dted_action = last->dtad_next;
  else
   ap->dtad_next = last->dtad_next;





  last->dtad_next = ((void*)0);

  for (ap = sdp->dtsd_action; ap != ((void*)0); ap = next) {
   assert(ap->dtad_uarg == (uintptr_t)sdp);
   dt_difo_free(dtp, ap->dtad_difo);
   next = ap->dtad_next;
   dt_free(dtp, ap);
  }
 }

 if (sdp->dtsd_fmtdata != ((void*)0))
  dt_printf_destroy(sdp->dtsd_fmtdata);
 dt_free(dtp, sdp->dtsd_strdata);

 dt_ecbdesc_release(dtp, sdp->dtsd_ecbdesc);
 dt_free(dtp, sdp);
}
