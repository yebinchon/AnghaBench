
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dt_node_t ;
struct TYPE_3__ {scalar_t__ di_type; int * di_ctfp; } ;
typedef TYPE_1__ dt_ident_t ;


 int B_FALSE ;
 scalar_t__ CTF_ERR ;
 int dt_node_type_assign (int *,int *,scalar_t__,int ) ;

__attribute__((used)) static void
dt_idcook_thaw(dt_node_t *dnp, dt_ident_t *idp, int argc, dt_node_t *args)
{
 if (idp->di_ctfp != ((void*)0) && idp->di_type != CTF_ERR)
  dt_node_type_assign(dnp, idp->di_ctfp, idp->di_type, B_FALSE);
}
