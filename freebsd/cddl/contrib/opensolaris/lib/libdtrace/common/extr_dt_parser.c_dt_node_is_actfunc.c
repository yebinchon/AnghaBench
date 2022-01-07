
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dn_kind; TYPE_1__* dn_ident; } ;
typedef TYPE_2__ dt_node_t ;
struct TYPE_4__ {scalar_t__ di_kind; } ;


 scalar_t__ DT_IDENT_ACTFUNC ;
 scalar_t__ DT_NODE_FUNC ;

int
dt_node_is_actfunc(const dt_node_t *dnp)
{
 return (dnp->dn_kind == DT_NODE_FUNC &&
     dnp->dn_ident->di_kind == DT_IDENT_ACTFUNC);
}
