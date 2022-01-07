
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dt_pcb; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int EDT_BADOPTCTX ;
 int EDT_BADOPTVAL ;
 int EDT_NOMEM ;
 int * dt_cpp_add_arg (TYPE_1__*,char*) ;
 int dt_set_errno (TYPE_1__*,int ) ;

__attribute__((used)) static int
dt_opt_cpp_hdrs(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 if (arg != ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (dtp->dt_pcb != ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTCTX));

 if (dt_cpp_add_arg(dtp, "-H") == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));

 return (0);
}
