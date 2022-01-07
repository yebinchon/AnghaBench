
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dt_errprog; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int EDT_BADERROR ;
 int dt_set_errno (TYPE_1__*,int ) ;
 void* dtrace_dof_create (TYPE_1__*,int *,int ) ;

void *
dtrace_geterr_dof(dtrace_hdl_t *dtp)
{
 if (dtp->dt_errprog != ((void*)0))
  return (dtrace_dof_create(dtp, dtp->dt_errprog, 0));

 (void) dt_set_errno(dtp, EDT_BADERROR);
 return (((void*)0));
}
