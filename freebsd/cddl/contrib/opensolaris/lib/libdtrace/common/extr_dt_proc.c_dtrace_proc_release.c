
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_prochandle {int dummy; } ;
typedef int dtrace_hdl_t ;


 int dt_proc_release (int *,struct ps_prochandle*) ;

void
dtrace_proc_release(dtrace_hdl_t *dtp, struct ps_prochandle *P)
{
 dt_proc_release(dtp, P);
}
