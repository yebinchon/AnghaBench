
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dt_cpp_argc; char** dt_cpp_argv; } ;
typedef TYPE_1__ dtrace_hdl_t ;



char *
dt_cpp_pop_arg(dtrace_hdl_t *dtp)
{
 char *arg;

 if (dtp->dt_cpp_argc <= 1)
  return (((void*)0));

 arg = dtp->dt_cpp_argv[--dtp->dt_cpp_argc];
 dtp->dt_cpp_argv[dtp->dt_cpp_argc] = ((void*)0);

 return (arg);
}
