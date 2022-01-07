
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dt_stdcmode; int * dt_pcb; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int DT_STDC_XA ;
 int DT_STDC_XC ;
 int DT_STDC_XS ;
 int DT_STDC_XT ;
 int EDT_BADOPTCTX ;
 int EDT_BADOPTVAL ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
dt_opt_stdc(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 if (arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (dtp->dt_pcb != ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTCTX));

 if (strcmp(arg, "a") == 0)
  dtp->dt_stdcmode = DT_STDC_XA;
 else if (strcmp(arg, "c") == 0)
  dtp->dt_stdcmode = DT_STDC_XC;
 else if (strcmp(arg, "s") == 0)
  dtp->dt_stdcmode = DT_STDC_XS;
 else if (strcmp(arg, "t") == 0)
  dtp->dt_stdcmode = DT_STDC_XT;
 else
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 return (0);
}
