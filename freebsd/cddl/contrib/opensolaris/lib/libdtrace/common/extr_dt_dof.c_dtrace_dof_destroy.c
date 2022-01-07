
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;


 int dt_free (int *,void*) ;

void
dtrace_dof_destroy(dtrace_hdl_t *dtp, void *dof)
{
 dt_free(dtp, dof);
}
