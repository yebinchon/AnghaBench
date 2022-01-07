
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_10__ {int dn_args; TYPE_2__* dn_ident; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_11__ {int di_flags; int di_name; } ;
typedef TYPE_2__ dt_ident_t ;


 int DT_IDFLG_LOCAL ;
 int DT_IDFLG_REF ;
 int DT_IDFLG_TLS ;
 int D_VAR_UNDEF ;
 int dnerror (TYPE_1__*,int ,char*,char*,int ) ;
 int dt_ident_cook (TYPE_1__*,TYPE_2__*,int *) ;
 scalar_t__ dt_ident_unref (TYPE_2__*) ;
 int dt_node_attr_assign (TYPE_1__*,int ) ;

__attribute__((used)) static dt_node_t *
dt_cook_var(dt_node_t *dnp, uint_t idflags)
{
 dt_ident_t *idp = dnp->dn_ident;

 if ((idflags & DT_IDFLG_REF) && dt_ident_unref(idp)) {
  dnerror(dnp, D_VAR_UNDEF,
      "%s%s has not yet been declared or assigned\n",
      (idp->di_flags & DT_IDFLG_LOCAL) ? "this->" :
      (idp->di_flags & DT_IDFLG_TLS) ? "self->" : "",
      idp->di_name);
 }

 dt_node_attr_assign(dnp, dt_ident_cook(dnp, idp, &dnp->dn_args));
 return (dnp);
}
