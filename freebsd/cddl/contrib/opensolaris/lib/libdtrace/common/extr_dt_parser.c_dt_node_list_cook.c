
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
typedef int dtrace_attribute_t ;
struct TYPE_5__ {struct TYPE_5__* dn_list; int dn_attr; } ;
typedef TYPE_1__ dt_node_t ;


 int _dtrace_defattr ;
 int dt_attr_min (int ,int ) ;
 TYPE_1__* dt_node_cook (TYPE_1__*,int ) ;

dtrace_attribute_t
dt_node_list_cook(dt_node_t **pnp, uint_t idflags)
{
 dtrace_attribute_t attr = _dtrace_defattr;
 dt_node_t *dnp, *nnp;

 for (dnp = (pnp != ((void*)0) ? *pnp : ((void*)0)); dnp != ((void*)0); dnp = nnp) {
  nnp = dnp->dn_list;
  dnp = *pnp = dt_node_cook(dnp, idflags);
  attr = dt_attr_min(attr, dnp->dn_attr);
  dnp->dn_list = nnp;
  pnp = &dnp->dn_list;
 }

 return (attr);
}
