
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dt_linkmode; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int DT_LINK_DYNAMIC ;
 int DT_LINK_KERNEL ;
 int DT_LINK_PRIMARY ;
 int DT_LINK_STATIC ;
 int EDT_BADOPTVAL ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
dt_opt_linkmode(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 if (arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (strcmp(arg, "kernel") == 0)
  dtp->dt_linkmode = DT_LINK_KERNEL;
 else if (strcmp(arg, "primary") == 0)
  dtp->dt_linkmode = DT_LINK_PRIMARY;
 else if (strcmp(arg, "dynamic") == 0)
  dtp->dt_linkmode = DT_LINK_DYNAMIC;
 else if (strcmp(arg, "static") == 0)
  dtp->dt_linkmode = DT_LINK_STATIC;
 else
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 return (0);
}
