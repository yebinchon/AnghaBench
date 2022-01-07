
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_6__ {int dn_args; int dn_ident; } ;
typedef TYPE_1__ dt_node_t ;


 int dt_ident_cook (TYPE_1__*,int ,int *) ;
 int dt_node_attr_assign (TYPE_1__*,int ) ;

__attribute__((used)) static dt_node_t *
dt_cook_func(dt_node_t *dnp, uint_t idflags)
{
 dt_node_attr_assign(dnp,
     dt_ident_cook(dnp, dnp->dn_ident, &dnp->dn_args));

 return (dnp);
}
