
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** dt_cpp_argv; char* dt_cpp_path; int * dt_pcb; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int EDT_BADOPTCTX ;
 int EDT_BADOPTVAL ;
 int EDT_NOMEM ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int free (char*) ;
 scalar_t__ strbasename (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
dt_opt_cpp_path(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 char *cpp;

 if (arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (dtp->dt_pcb != ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTCTX));

 if ((cpp = strdup(arg)) == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));

 dtp->dt_cpp_argv[0] = (char *)strbasename(cpp);
 free(dtp->dt_cpp_path);
 dtp->dt_cpp_path = cpp;

 return (0);
}
