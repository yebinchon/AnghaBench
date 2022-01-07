
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_hdl_t ;
typedef int dt_version_t ;


 int EDT_BADOPTVAL ;
 int EDT_VERSINVAL ;
 int EDT_VERSUNDEF ;
 int dt_reduce (int *,int ) ;
 int dt_set_errno (int *,int ) ;
 int dt_version_defined (int ) ;
 int dt_version_str2num (char const*,int *) ;

__attribute__((used)) static int
dt_opt_version(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 dt_version_t v;

 if (arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (dt_version_str2num(arg, &v) == -1)
  return (dt_set_errno(dtp, EDT_VERSINVAL));

 if (!dt_version_defined(v))
  return (dt_set_errno(dtp, EDT_VERSUNDEF));

 return (dt_reduce(dtp, v));
}
