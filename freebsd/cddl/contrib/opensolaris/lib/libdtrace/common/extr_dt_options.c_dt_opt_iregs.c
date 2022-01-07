
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dtc_difintregs; } ;
struct TYPE_6__ {TYPE_1__ dt_conf; } ;
typedef TYPE_2__ dtrace_hdl_t ;


 int EDT_BADOPTVAL ;
 int atoi (char const*) ;
 int dt_set_errno (TYPE_2__*,int ) ;

__attribute__((used)) static int
dt_opt_iregs(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 int n;

 if (arg == ((void*)0) || (n = atoi(arg)) <= 0)
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 dtp->dt_conf.dtc_difintregs = n;
 return (0);
}
