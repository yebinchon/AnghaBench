
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_7__ {TYPE_2__* dn_membexpr; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_8__ {int dn_attr; } ;


 int dt_node_attr_assign (TYPE_1__*,int ) ;
 TYPE_2__* dt_node_cook (TYPE_2__*,int ) ;

__attribute__((used)) static dt_node_t *
dt_cook_member(dt_node_t *dnp, uint_t idflags)
{
 dnp->dn_membexpr = dt_node_cook(dnp->dn_membexpr, idflags);
 dt_node_attr_assign(dnp, dnp->dn_membexpr->dn_attr);
 return (dnp);
}
