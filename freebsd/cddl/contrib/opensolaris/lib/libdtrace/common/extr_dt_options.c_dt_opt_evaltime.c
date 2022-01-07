
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dt_prcmode; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int DT_PROC_STOP_CREATE ;
 int DT_PROC_STOP_MAIN ;
 int DT_PROC_STOP_POSTINIT ;
 int DT_PROC_STOP_PREINIT ;
 int EDT_BADOPTVAL ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
dt_opt_evaltime(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 if (arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (strcmp(arg, "exec") == 0)
  dtp->dt_prcmode = DT_PROC_STOP_CREATE;
 else if (strcmp(arg, "preinit") == 0)
  dtp->dt_prcmode = DT_PROC_STOP_PREINIT;
 else if (strcmp(arg, "postinit") == 0)
  dtp->dt_prcmode = DT_PROC_STOP_POSTINIT;
 else if (strcmp(arg, "main") == 0)
  dtp->dt_prcmode = DT_PROC_STOP_MAIN;
 else
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 return (0);
}
