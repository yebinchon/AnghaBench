
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_optval_t ;
struct TYPE_4__ {int * dt_options; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int EDT_BADOPTVAL ;
 scalar_t__ dt_optval_parse (char const*,int *) ;
 int dt_set_errno (TYPE_1__*,int ) ;

__attribute__((used)) static int
dt_opt_size(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 dtrace_optval_t val = 0;

 if (arg != ((void*)0) && dt_optval_parse(arg, &val) != 0)
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 dtp->dt_options[option] = val;
 return (0);
}
