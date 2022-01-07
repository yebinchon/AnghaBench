
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dn_attr; int dn_type; int dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;


 int B_FALSE ;
 int dt_attr_min (int ,int ) ;
 int dt_node_attr_assign (TYPE_1__*,int ) ;
 int dt_node_type_assign (TYPE_1__*,int ,int ,int ) ;
 int dt_type_promote (TYPE_1__*,TYPE_1__*,int *,int *) ;

void
dt_node_promote(dt_node_t *lp, dt_node_t *rp, dt_node_t *dnp)
{
 dt_type_promote(lp, rp, &dnp->dn_ctfp, &dnp->dn_type);
 dt_node_type_assign(dnp, dnp->dn_ctfp, dnp->dn_type, B_FALSE);
 dt_node_attr_assign(dnp, dt_attr_min(lp->dn_attr, rp->dn_attr));
}
