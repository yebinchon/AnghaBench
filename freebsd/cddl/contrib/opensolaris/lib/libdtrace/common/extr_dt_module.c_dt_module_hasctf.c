
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_4__ {scalar_t__ dm_pid; scalar_t__ dm_nctflibs; } ;
typedef TYPE_1__ dt_module_t ;


 int * dt_module_getctf (int *,TYPE_1__*) ;

int
dt_module_hasctf(dtrace_hdl_t *dtp, dt_module_t *dmp)
{
 if (dmp->dm_pid != 0 && dmp->dm_nctflibs > 0)
  return (1);
 return (dt_module_getctf(dtp, dmp) != ((void*)0));
}
