
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_5__ {struct TYPE_5__* dn_list; struct TYPE_5__* dn_pdescs; } ;
typedef TYPE_1__ dt_node_t ;


 int dt_compile_one_clause (int *,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void
dt_compile_clause(dtrace_hdl_t *dtp, dt_node_t *cnp)
{
 dt_node_t *pnp;

 for (pnp = cnp->dn_pdescs; pnp != ((void*)0); pnp = pnp->dn_list)
  dt_compile_one_clause(dtp, cnp, pnp);
}
