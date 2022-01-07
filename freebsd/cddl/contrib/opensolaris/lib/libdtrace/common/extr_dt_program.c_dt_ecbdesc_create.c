
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_5__ {int dted_probe; } ;
typedef TYPE_1__ dtrace_ecbdesc_t ;


 int EDT_NOMEM ;
 int dt_ecbdesc_hold (TYPE_1__*) ;
 int dt_set_errno (int *,int ) ;
 TYPE_1__* dt_zalloc (int *,int) ;

dtrace_ecbdesc_t *
dt_ecbdesc_create(dtrace_hdl_t *dtp, const dtrace_probedesc_t *pdp)
{
 dtrace_ecbdesc_t *edp;

 if ((edp = dt_zalloc(dtp, sizeof (dtrace_ecbdesc_t))) == ((void*)0)) {
  (void) dt_set_errno(dtp, EDT_NOMEM);
  return (((void*)0));
 }

 edp->dted_probe = *pdp;
 dt_ecbdesc_hold(edp);
 return (edp);
}
