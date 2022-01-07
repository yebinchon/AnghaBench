
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
 char* alloca (size_t) ;
 int * dt_cpp_add_arg (TYPE_1__*,char*) ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
dt_opt_cpp_opts(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 char *buf;
 size_t len;
 const char *opt = (const char *)option;

 if (opt == ((void*)0) || arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (dtp->dt_pcb != ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTCTX));

 len = strlen(opt) + strlen(arg) + 1;
 buf = alloca(len);

 (void) strcpy(buf, opt);
 (void) strcat(buf, arg);

 if (dt_cpp_add_arg(dtp, buf) == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));

 return (0);
}
