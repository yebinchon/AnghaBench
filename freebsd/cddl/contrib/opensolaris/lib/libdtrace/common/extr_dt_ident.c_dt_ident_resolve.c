
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dn_kind; TYPE_3__* dn_ident; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_8__ {TYPE_1__* din_root; } ;
typedef TYPE_2__ dt_idnode_t ;
struct TYPE_9__ {int di_flags; scalar_t__ di_iarg; } ;
typedef TYPE_3__ dt_ident_t ;


 int DT_IDFLG_INLINE ;






 scalar_t__ dt_node_is_dynamic (TYPE_1__ const*) ;

dt_ident_t *
dt_ident_resolve(dt_ident_t *idp)
{
 while (idp->di_flags & DT_IDFLG_INLINE) {
  const dt_node_t *dnp = ((dt_idnode_t *)idp->di_iarg)->din_root;

  if (dnp == ((void*)0))
   break;

  switch (dnp->dn_kind) {
  case 128:
  case 129:
  case 132:
  case 133:
  case 131:
  case 130:
   idp = dnp->dn_ident;
   continue;
  }

  if (dt_node_is_dynamic(dnp))
   idp = dnp->dn_ident;
  else
   break;
 }

 return (idp);
}
