
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;


 int EDT_BADOPTVAL ;
 int _dtrace_debug ;
 int dt_set_errno (int *,int ) ;

__attribute__((used)) static int
dt_opt_debug(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 if (arg != ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 _dtrace_debug = 1;
 return (0);
}
