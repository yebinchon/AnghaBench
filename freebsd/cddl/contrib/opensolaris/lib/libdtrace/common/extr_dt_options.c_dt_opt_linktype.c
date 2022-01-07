
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dt_linktype; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int DT_LTYP_DOF ;
 int DT_LTYP_ELF ;
 int EDT_BADOPTVAL ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static int
dt_opt_linktype(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 if (arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (strcasecmp(arg, "elf") == 0)
  dtp->dt_linktype = DT_LTYP_ELF;
 else if (strcasecmp(arg, "dof") == 0)
  dtp->dt_linktype = DT_LTYP_DOF;
 else
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 return (0);
}
