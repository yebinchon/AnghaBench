
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dt_vmax; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dt_idhash_t ;
struct TYPE_7__ {scalar_t__ di_vers; } ;
typedef TYPE_2__ dt_ident_t ;


 int dt_idhash_delete (int *,TYPE_2__*) ;

__attribute__((used)) static int
dt_reduceid(dt_idhash_t *dhp, dt_ident_t *idp, dtrace_hdl_t *dtp)
{
 if (idp->di_vers != 0 && idp->di_vers > dtp->dt_vmax)
  dt_idhash_delete(dhp, idp);

 return (0);
}
