
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dt_globals; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_7__ {int di_attr; } ;
typedef TYPE_2__ dt_ident_t ;
struct TYPE_8__ {int * pcb_probe; int * pcb_pdesc; } ;


 int _dtrace_defattr ;
 TYPE_2__* dt_idhash_lookup (int ,char const* const) ;
 TYPE_3__* yypcb ;

void
dt_endcontext(dtrace_hdl_t *dtp)
{
 static const char *const cvars[] = {
  "probeprov", "probemod", "probefunc", "probename", "args", ((void*)0)
 };

 dt_ident_t *idp;
 int i;

 for (i = 0; cvars[i] != ((void*)0); i++) {
  if ((idp = dt_idhash_lookup(dtp->dt_globals, cvars[i])) != ((void*)0))
   idp->di_attr = _dtrace_defattr;
 }

 yypcb->pcb_pdesc = ((void*)0);
 yypcb->pcb_probe = ((void*)0);
}
