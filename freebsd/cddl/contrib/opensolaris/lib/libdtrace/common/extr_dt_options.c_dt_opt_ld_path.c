
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* dt_ld_path; int * dt_pcb; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int EDT_BADOPTCTX ;
 int EDT_BADOPTVAL ;
 int EDT_NOMEM ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int free (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
dt_opt_ld_path(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 char *ld;

 if (arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (dtp->dt_pcb != ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTCTX));

 if ((ld = strdup(arg)) == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));

 free(dtp->dt_ld_path);
 dtp->dt_ld_path = ld;

 return (0);
}
