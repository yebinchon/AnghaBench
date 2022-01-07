
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ** dx_membdif; } ;
typedef TYPE_1__ dt_xlator_t ;
struct TYPE_6__ {size_t dn_membid; struct TYPE_6__* dn_list; struct TYPE_6__* dn_members; TYPE_1__* dn_xlator; } ;
typedef TYPE_2__ dt_node_t ;


 int assert (int ) ;
 int * dt_as (int ) ;
 int dt_cg (int ,TYPE_2__*) ;
 int yypcb ;

__attribute__((used)) static void
dt_compile_xlator(dt_node_t *dnp)
{
 dt_xlator_t *dxp = dnp->dn_xlator;
 dt_node_t *mnp;

 for (mnp = dnp->dn_members; mnp != ((void*)0); mnp = mnp->dn_list) {
  assert(dxp->dx_membdif[mnp->dn_membid] == ((void*)0));
  dt_cg(yypcb, mnp);
  dxp->dx_membdif[mnp->dn_membid] = dt_as(yypcb);
 }
}
