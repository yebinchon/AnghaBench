
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dt_procs; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_5__ {int dph_lrulim; } ;


 int EDT_BADOPTVAL ;
 int atoi (char const*) ;
 int dt_set_errno (TYPE_2__*,int ) ;

__attribute__((used)) static int
dt_opt_pgmax(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 int n;

 if (arg == ((void*)0) || (n = atoi(arg)) < 0)
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 dtp->dt_procs->dph_lrulim = n;
 return (0);
}
