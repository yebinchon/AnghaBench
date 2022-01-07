
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;


 int EDT_BADOPTVAL ;
 scalar_t__ atexit (int ) ;
 int dt_coredump ;
 int dt_set_errno (int *,int ) ;
 int errno ;

__attribute__((used)) static int
dt_opt_core(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 static int enabled = 0;

 if (arg != ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (enabled++ || atexit(dt_coredump) == 0)
  return (0);

 return (dt_set_errno(dtp, errno));
}
