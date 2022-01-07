
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int dt_node_t ;
struct TYPE_5__ {scalar_t__ di_kind; } ;
typedef TYPE_1__ dt_ident_t ;


 scalar_t__ DT_IDENT_ARRAY ;
 int dt_idcook_assc (int *,TYPE_1__*,int,int *) ;
 int dt_idcook_thaw (int *,TYPE_1__*,int,int *) ;

__attribute__((used)) static void
dt_idcook_inline(dt_node_t *dnp, dt_ident_t *idp, int argc, dt_node_t *args)
{
 if (idp->di_kind == DT_IDENT_ARRAY)
  dt_idcook_assc(dnp, idp, argc, args);
 else
  dt_idcook_thaw(dnp, idp, argc, args);
}
