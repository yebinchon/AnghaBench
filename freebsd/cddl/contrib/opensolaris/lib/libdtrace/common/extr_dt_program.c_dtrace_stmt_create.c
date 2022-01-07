
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* dtsd_stmtattr; void* dtsd_descattr; int * dtsd_ecbdesc; } ;
typedef TYPE_1__ dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
typedef int dtrace_ecbdesc_t ;


 void* _dtrace_defattr ;
 int dt_ecbdesc_hold (int *) ;
 TYPE_1__* dt_zalloc (int *,int) ;

dtrace_stmtdesc_t *
dtrace_stmt_create(dtrace_hdl_t *dtp, dtrace_ecbdesc_t *edp)
{
 dtrace_stmtdesc_t *sdp;

 if ((sdp = dt_zalloc(dtp, sizeof (dtrace_stmtdesc_t))) == ((void*)0))
  return (((void*)0));

 dt_ecbdesc_hold(edp);
 sdp->dtsd_ecbdesc = edp;
 sdp->dtsd_descattr = _dtrace_defattr;
 sdp->dtsd_stmtattr = _dtrace_defattr;

 return (sdp);
}
