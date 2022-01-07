
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_7__ {int dn_kind; int dn_ident; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_8__ {scalar_t__ di_kind; } ;
typedef TYPE_2__ dt_ident_t ;
 TYPE_2__* dt_ident_resolve (int ) ;
 scalar_t__ dt_node_is_dynamic (TYPE_1__ const*) ;

dt_ident_t *
dt_node_resolve(const dt_node_t *dnp, uint_t idkind)
{
 dt_ident_t *idp;

 switch (dnp->dn_kind) {
 case 128:
 case 129:
 case 132:
 case 133:
 case 131:
 case 130:
  idp = dt_ident_resolve(dnp->dn_ident);
  return (idp->di_kind == idkind ? idp : ((void*)0));
 }

 if (dt_node_is_dynamic(dnp)) {
  idp = dt_ident_resolve(dnp->dn_ident);
  return (idp->di_kind == idkind ? idp : ((void*)0));
 }

 return (((void*)0));
}
