
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dt_treedump; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int EDT_BADOPTVAL ;
 int atoi (char const*) ;
 int dt_set_errno (TYPE_1__*,int ) ;

__attribute__((used)) static int
dt_opt_tree(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 int m;

 if (arg == ((void*)0) || (m = atoi(arg)) <= 0)
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 dtp->dt_treedump = m;
 return (0);
}
